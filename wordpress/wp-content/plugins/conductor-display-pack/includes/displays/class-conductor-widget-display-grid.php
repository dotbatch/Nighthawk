<?php
/**
 * Conductor Widget Display Grid
 *
 * @class Conductor_Widget_Display_Grid
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_Widget_Display_Grid' ) ) {
	class Conductor_Widget_Display_Grid {
		/**
		 * @var string
		 */
		public $version = '1.0.0';

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
			add_filter( 'conductor_widget_query', array( $this, 'conductor_widget_query' ), 9999, 5 ); // Conductor Widget Query (late)
			add_action( 'wp_enqueue_scripts', array( $this, 'wp_enqueue_scripts' ) ); // Enqueue Scripts & Styles (front-end)
		}


		/**
		 * This function modifies the Conductor Widget output based on the $query and $instance.
		 */
		function conductor_widget_query( $query, $conductor_widget_query_args, $instance, $args, $widget ) {
			// Create an instance of the default query now because we to use functionality
			if ( empty( $query ) )
				$query = new Conductor_Widget_Default_Query( $conductor_widget_query_args );

			// Grid display, add hooks
			if ( ! empty( $instance ) && isset( $instance['widget_size'] ) && $instance['widget_size'] === 'grid' )
				$this->add_grid_hooks( $query, $instance, $args, $widget );
			// Otherwise remove the hooks
			else
				$this->remove_grid_hooks( $query, $instance, $args, $widget );

			// Store local data
			$this->widget = $widget;
			$this->widget_args = $args;

			return $query;
		}

		/**
		 * This function adds various hooks on Conductor Widgets to modify output.
		 */
		function add_grid_hooks( $query, $instance, $args, $widget ) {
			// Pagination
			if ( $query->has_pagination() )
				add_action( 'conductor_widget_pagination_before', array( $this, 'conductor_widget_pagination_before' ) ); // Clearing element

			add_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Stylesheet
			add_filter( 'conductor_widget_css_classes', array( $this, 'conductor_widget_css_classes' ) ); // CSS Classes
			add_filter( 'conductor_widget_featured_image_size', array( $this, 'conductor_widget_featured_image_size' ), 10, 3 ); // Featured Image Size
		}

		/**
		 * This function removes various hooks on Conductor Widgets to modify output.
		 */
		function remove_grid_hooks( $query, $instance, $args, $widget ) {
			// Pagination
			if ( $query->has_pagination() )
				remove_action( 'conductor_widget_pagination_before', array( $this, 'conductor_widget_pagination_before' ) ); // Clearing element

			remove_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Stylesheet
			remove_filter( 'conductor_widget_css_classes', array( $this, 'conductor_widget_css_classes' ) ); // CSS Classes
			remove_filter( 'conductor_widget_featured_image_size', array( $this, 'conductor_widget_featured_image_size' ) ); // Featured Image Size
		}


		/*********************
		 * Display Functions *
		 *********************/

		/**
		 * This function adds a clearing element before Conductor Widget pagination.
		 */
		function conductor_widget_pagination_before() {
		?>
			<section class="conductor-cf"></section>
		<?php
		}

		/**
		 * This function outputs CSS associated with this widget after all of the content. We
		 * have to parse the arguments of the widget to determine the correct CSS selector in
		 * this case due to the nature of registered sidebars within WordPress.
		 *
		 * We're looking for a widget ID first and then classes; if neither are found, no CSS
		 * is output.
		 */
		function conductor_widget_after() {
			$post_count = did_action( 'conductor_widget_display_content_' . $this->widget->number ); // Count the number of posts displayed
			$conductor_content_layout = Conductor::get_conductor_content_layout();
			$conductor_layout_sidebars = apply_filters( 'conductor_dp_content_layout_sidebars', array(
				Conductor::get_conductor_content_layout_sidebar_id( 'content' ),
				Conductor::get_conductor_content_layout_sidebar_id( 'primary' ),
				Conductor::get_conductor_content_layout_sidebar_id( 'secondary' )
			), $conductor_content_layout ); // TODO: Find a better filter name

			// If we have widget arguments we can output the correct CSS selector
			if ( ! empty( $this->widget_args ) && ! empty( $this->widget ) ) :
				preg_match( '/id="([^"]+)/', $this->widget_args['before_widget'], $widget_css_id );
				$widget_css_id = ( ! empty( $widget_css_id ) ) ? $widget_css_id[1] : false;

				// Build a CSS selector
				$css_selector = '';

				// If this widget is within a Conductor sidebar
				if ( in_array( $this->widget_args['id'], $conductor_layout_sidebars ) )
					$css_selector = '.' . $this->widget_args['id'] . ' ';

				// If this widget has an ID attribute
				if ( $widget_css_id )
					$css_selector .= '#' . $widget_css_id . ' .conductor-grid-item';
				// Find the best suitable CSS class
				else {
					preg_match( '/class="([^"]+)/', $this->widget_args['before_widget'], $widget_css_classes );
					$widget_css_classes = ( ! empty( $widget_css_classes ) ) ? explode( ' ', $widget_css_classes[1] ) : false;

					// Loop through widget CSS classes
					if ( ! empty( $widget_css_classes ) )
						foreach( $widget_css_classes as $css_class )
							// Found a class that contains the widget id, we'll try it
							if ( strpos( $css_class, ( string ) $this->widget->number ) !== false ) {
								$css_selector .= '.' . $css_class;
								break;
							}
				}

				// Output CSS if we have a selector
				if ( ! empty( $css_selector ) ):
			?>
				<style type="text/css">
					<?php echo $css_selector; ?> {
						width: <?php echo 100 / $post_count; ?>%;
						margin: 0;
						padding: 0;
					}

					/* Responsive Structure */
					@media only screen and ( max-width: 768px ) {
						<?php if ( $post_count % 2 ) : // Odd post counts ?>
							<?php echo $css_selector; ?> {
								width: <?php echo 200 / ( $post_count + 1 ); ?>%;
							}
						<?php else: // Even post counts ?>
							<?php echo $css_selector; ?> {
								width: <?php echo 200 / $post_count; ?>%;
							}
						<?php endif; ?>

						<?php echo $css_selector; ?>:nth-of-type(<?php echo ( ceil( $post_count / 2 ) + 1 ); ?>n) {
							clear: left;
						}
					}

					@media only screen and (max-width : 568px) {
						<?php echo $css_selector; ?> {
							width: 100%;
						}
					}
				</style>
				<div class="conductor-clear"></div>
			<?php
				endif;
			endif;

			// Reset the local data
			$this->widget = false;
			$this->widget_args = array();
		}

		/**
		 * This function defaults the featured image size to medium if a size is not already set.
		 */
		function conductor_widget_featured_image_size( $conductor_thumbnail_size, $instance, $post ) {
			// Default to medium
			if ( empty( $instance['post_thumbnails_size'] ) )
				$conductor_thumbnail_size = 'medium';

			return $conductor_thumbnail_size;
		}

		/**
		 * This function adds the CSS classes on this Conductor Widget.
		 */
		function conductor_widget_css_classes( $classes ) {
			// Grid Classes
			$classes[] = 'conductor-grid-item';
			$classes[] = 'conductor-dp-grid-item';

			return $classes;
		}

		/**
		 * This function enqueues scripts & styles on the front-end for Conductor Widget Displays.
		 */
		public function wp_enqueue_scripts() {
			// Conductor Widget Styles (only enqueue styles if this widget is active )
			$conductor_widget = Conduct_Widget();
			if ( is_active_widget( false, false, $conductor_widget->id_base, true ) )
				wp_enqueue_style( 'conductor-widget-display-grid', Conductor_Display_Pack_Addon::plugin_url() . '/assets/css/widgets/conductor-widget-display-grid.css', array( 'conductor-widget' ) );
		}
	}
}

/**
 * Create an instance of the Conductor_Widget_Display_Grid class.
 */
function Conduct_Widget_Display_Grid() {
	return Conductor_Widget_Display_Grid::instance();
}

Conduct_Widget_Display_Grid(); // Conduct your content!