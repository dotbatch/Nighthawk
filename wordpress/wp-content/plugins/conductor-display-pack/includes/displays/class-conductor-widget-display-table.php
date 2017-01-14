<?php
/**
 * Conductor Widget Display Table
 *
 * @class Conductor_Widget_Display_Table
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_Widget_Display_Table' ) ) {
	class Conductor_Widget_Display_Table {
		/**
		 * @var string
		 */
		public $version = '1.0.0';

		/**
		 * @var int, Total number of table cells for this widget
		 */
		public $table_cell_count = 0;

		/**
		 * @var Conductor_Widget, Conductor Widget instance
		 */
		public $widget = false;

		/**
		 * @var array, Conductor widget/sidebar arguments
		 */
		public $widget_args = array();

		/**
		 * @var Conductor, Instance of the class
		 */
		protected static $_instance;

		/**
		 * Function used to create instance of class.
		 */
		public static function instance() {
			if ( is_null( self::$_instance ) )
				self::$_instance = new self();

			return self::$_instance;
		}


		/**
		 * This function sets up all of the actions and filters on instance. It also loads (includes)
		 * the required files and assets.
		 */
		function __construct( $args = array() ) {
			// Hooks
			add_filter( 'conductor_widget_instance', array( $this, 'conductor_widget_instance' ), 9999, 3 ); // Conductor Widget Instance (late)
			add_filter( 'conductor_widget_query', array( $this, 'conductor_widget_query' ), 9999, 5 ); // Conductor Widget Query (late)
			add_action( 'wp_enqueue_scripts', array( $this, 'wp_enqueue_scripts' ) ); // Enqueue Scripts & Styles (front-end)
		}


		/**
		 * This function modifies the Conductor Widget output based on the $query and $instance.
		 */
		function conductor_widget_instance( $instance, $args, $widget ) {
			// Table display, add hooks
			if ( ! empty( $instance ) && isset( $instance['widget_size'] ) && $instance['widget_size'] === 'table' )
				$this->add_table_hooks( $instance, $widget );
			// Otherwise remove the hooks
			else
				$this->remove_table_hooks( $instance, $widget );

			return $instance;
		}

		/**
		 * This function modifies the Conductor Widget output based on the $query and $instance.
		 */
		function conductor_widget_query( $query, $conductor_widget_query_args, $instance, $args, $widget ) {
			// Create an instance of the default query now because we need to remove default actions
			if ( empty( $query ) )
				$query = new Conductor_Widget_Default_Query( $conductor_widget_query_args );

			// Table display, add hooks
			if ( ! empty( $instance ) && isset( $instance['widget_size'] ) && $instance['widget_size'] === 'table' )
				$this->add_table_data_hooks( $query, $instance, $args, $widget );
			// Otherwise remove the hooks
			else
				$this->remove_table_data_hooks( $query, $instance, $args, $widget );

			return $query;
		}

		/**
		 * This function adds various hooks on Conductor Widgets to modify output.
		 */
		function add_table_hooks( $instance, $widget ) {
			add_action( 'conductor_widget_title_after', array( $this, 'conductor_widget_title_after' ) ); // Opening <table>
			add_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Closing </table>
			add_filter( 'conductor_widget_featured_image_size', array( $this, 'conductor_widget_featured_image_size' ), 10, 3 ); // Featured Image Size
		}

		/**
		 * This function removes various hooks on Conductor Widgets to modify output.
		 */
		function remove_table_hooks( $instance, $widget ) {
			remove_action( 'conductor_widget_title_after', array( $this, 'conductor_widget_title_after' ) ); // Opening <table>
			remove_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Closing </table>
			remove_filter( 'conductor_widget_featured_image_size', array( $this, 'conductor_widget_featured_image_size' ) ); // Featured Image Size
		}

		/**
		 * This function adds various hooks on Conductor Widgets to modify output.
		 */
		function add_table_data_hooks( $query, $instance, $args, $widget ) {
			// Store local data
			$this->widget = $widget;
			$this->widget_args = $args;

			// Pagination
			if ( $query->has_pagination() ) {
				remove_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Closing <table>
				add_action( 'conductor_widget_pagination_before', array( $this, 'conductor_widget_pagination_before' ) ); // Closing <table>
			}

			// Remove content wrapper elements
			if ( property_exists( $query, 'hooks' ) && ! empty( $query->hooks ) && isset( $query->hooks['conductor_widget_display_content_' . $widget->number] ) ) {
				$widget_hooks = $query->hooks['conductor_widget_display_content_' . $widget->number];

				// If we have hooks on this particular widget
				if ( ! empty( $widget_hooks ) )
					// Loop through hooks to determine correct content wrapper properties
					foreach ( $widget_hooks  as $priority => $callback ) {
						// Content wrapper opening element
						if ( is_array( $callback ) && $callback[1] === 'conductor_widget_content_wrapper' )
							remove_action( 'conductor_widget_display_content_' . $widget->number, array( $query, 'conductor_widget_content_wrapper' ), $priority );

						// Content wrapper closing element
						if ( is_array( $callback ) && $callback[1] === 'conductor_widget_content_wrapper_close' )
							remove_action( 'conductor_widget_display_content_' . $widget->number, array( $query, 'conductor_widget_content_wrapper_close' ), $priority );
					}
			}

			add_filter( 'conductor_widget_wrapper_html_element', array( $this, 'conductor_widget_wrapper_html_element' ) ); // Wrapper Element
			add_filter( 'conductor_widget_css_classes', array( $this, 'conductor_widget_css_classes' ) ); // CSS Classes

			// Add table cells
			if ( ! empty( $instance['output'] ) ) {
				foreach( $instance['output'] as $priority => $element ) {
					// Array callback
					if ( is_array( $element['callback'] ) && $element['visible'] ) {
						add_action( $element['callback'][1] . '_before', array( $this, 'table_data' ) ); // Opening <td>
						add_action( $element['callback'][1] . '_after', array( $this, 'table_data_close' ) ); // Closing </td>
					}
					// String callback
					else if ( ! is_array( $element['callback'] ) && $element['visible'] ) {
						add_action( $element['callback'] . '_before', array( $this, 'table_data' ) ); // Opening <td>
						add_action( $element['callback'] . '_after', array( $this, 'table_data_close' ) ); // Closing </td>
					}
				}
			}
		}

		/**
		 * This function removes various hooks on Conductor Widgets to modify output.
		 */
		function remove_table_data_hooks( $query, $instance, $args, $widget ) {
			// Pagination
			if ( $query->has_pagination() )
				remove_action( 'conductor_widget_pagination_before', array( $this, 'conductor_widget_pagination_before' ) ); // Closing UL

			remove_filter( 'conductor_widget_wrapper_html_element', array( $this, 'conductor_widget_wrapper_html_element' ) ); // Wrapper Element
			remove_filter( 'conductor_widget_css_classes', array( $this, 'conductor_widget_css_classes' ) ); // CSS Classes

			// Remove table cells
			if ( ! empty( $instance['output'] ) )
				foreach ( $instance['output'] as $priority => $element ) {

					// Array callback
					if ( is_array( $element['callback'] ) && $element['visible'] ) {
						remove_action( $element['callback'][1] . '_before', array( $this, 'table_data' ) ); // Opening <td>
						remove_action( $element['callback'][1] . '_after', array( $this, 'table_data_close' ) ); // Closing </td>
					}
					// String callback
					else if ( ! is_array( $element['callback'] ) && $element['visible'] ) {
						remove_action( $element['callback'] . '_before', array( $this, 'table_data' ) ); // Opening <td>
						remove_action( $element['callback'] . '_after', array( $this, 'table_data_close' ) ); // Closing </td>
					}
				}
		}


		/*********************
		 * Display Functions *
		 *********************/

		/**
		 * This function adds an opening table tag after the Conductor Widget title.
		 */
		function conductor_widget_title_after() {
		?>
			<table class="conductor-table conductor-dp-table">
		<?php
		}

		/**
		 * This function adds a closing table tag after the Conductor Widget.
		 */
		function conductor_widget_after() {
			// Output the <td> style element
			//$this->output_table_cell_style();
		?>
			</table>
		<?php
		}

		/**
		 * This function adds a closing unordered list tag before the Conductor Widget pagination
		 * if necessary.
		 */
		function conductor_widget_pagination_before() {
			// Output the <td> style element
			//$this->output_table_cell_style();
		?>
			</table>
		<?php
		}

		/**
		 * This function defaults the featured image size to thumbnail if a size is not already set.
		 */
		function conductor_widget_featured_image_size( $conductor_thumbnail_size, $instance, $post ) {
			// Default to medium
			if ( empty( $instance['post_thumbnails_size'] ) )
				$conductor_thumbnail_size = 'medium';

			return $conductor_thumbnail_size;
		}

		/**
		 * This function adjusts the Conductor Widget wrapper HTML element to a table row.
		 */
		function conductor_widget_wrapper_html_element() {
			// Table Row
			return 'tr';
		}

		/**
		 * This function adds the CSS classes on this Conductor Widget.
		 */
		function conductor_widget_css_classes( $classes ) {
			// Table Classes
			$classes[] = 'conductor-table-item';
			$classes[] = 'conductor-dp-table-item';
			$classes[] = 'conductor-table-row';
			$classes[] = 'conductor-dp-table-row';

			return $classes;
		}

		/**
		 * This function adds an opening table data tag before each post in Conductor Widgets.
		 */
		function table_data() {
		?>
			<td class="conductor-table-cell conductor-dp-table-cell">
		<?php
		}

		/**
		 * This function adds a closing table data tag after each post in Conductor Widgets.
		 */
		function table_data_close() {
			$this->table_cell_count++; // Increase the table cell count
		?>
			</td>
		<?php
		}

		/**
		 * This function outputs CSS associated with this widget after all of the content. We
		 * have to parse the arguments of the widget to determine the correct CSS selector in
		 * this case due to the nature of registered sidebars within WordPress.
		 *
		 * We're looking for a widget ID first and then classes; if neither are found, no CSS
		 * is output.
		 *
		 * TODO: This function is currently incomplete and not used
		 */
		function output_table_cell_style() {
			if ( is_a( $this->widget, 'WP_Widget' ) ) :
				$post_count = did_action( 'conductor_widget_display_content_' . $this->widget->number ); // Count the number of posts displayed
				$this->table_cell_count /= $post_count;
				$conductor_content_layout = Conductor::get_conductor_content_layout();

				// If we have widget arguments we can output the correct CSS selector
				if ( ! empty( $this->widget_args ) ) :
				?>
					<style type="text/css">
						.<?php echo $this->widget_args['id']; ?> #<?php echo $conductor_content_layout['field_type'] . '-' . $conductor_content_layout['field_id'] . '-widget-' . $this->widget_args['widget_id']; ?> .conductor-table .conductor-table-cell {
							width: <?php echo 100 / $this->table_cell_count; ?>%;
						}
					</style>
				<?php
				endif;

				// Reset the local data
				$this->table_cell_count = 0;
				$this->widget = false;
				$this->widget_args = array();
			endif;
		}

		/**
		 * This function enqueues scripts & styles on the front-end for Conductor Widget Displays.
		 */
		public function wp_enqueue_scripts() {
			// Conductor Widget Styles (only enqueue styles if this widget is active )
			$conductor_widget = Conduct_Widget();
			if ( is_active_widget( false, false, $conductor_widget->id_base, true ) )
				wp_enqueue_style( 'conductor-widget-display-table', Conductor_Display_Pack_Addon::plugin_url() . '/assets/css/widgets/conductor-widget-display-table.css', array( 'conductor-widget' ) );
		}
	}
}

/**
 * Create an instance of the Conductor_Widget_Display_Table class.
 */
function Conduct_Widget_Display_Table() {
	return Conductor_Widget_Display_Table::instance();
}

Conduct_Widget_Display_Table(); // Conduct your content!