<?php
/**
 * Conductor Widget Display List
 *
 * @class Conductor_Widget_Display_List
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_Widget_Display_List' ) ) {
	class Conductor_Widget_Display_List {
		/**
		 * @var string
		 */
		public $version = '1.0.0';

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
			// List display, add hooks
			if ( ! empty( $instance ) && isset( $instance['widget_size'] ) && $instance['widget_size'] === 'list' )
				$this->add_unordered_list_hooks( $instance, $widget );
			// Otherwise remove the hooks
			else
				$this->remove_unordered_list_hooks( $instance, $widget );

			return $instance;
		}

		/**
		 * This function modifies the Conductor Widget output based on the $query and $instance.
		 */
		function conductor_widget_query( $query, $conductor_widget_query_args, $instance, $args, $widget ) {
			// Create an instance of the default query now because we need to remove default actions
			if ( empty( $query ) )
				$query = new Conductor_Widget_Default_Query( $conductor_widget_query_args );

			// List display, add hooks
			if ( $instance['widget_size'] === 'list' )
				$this->add_list_item_hooks( $query, $instance, $widget );
			// Otherwise remove the hooks
			else
				$this->remove_list_item_hooks( $query, $instance, $widget );

			return $query;
		}

		/**
		 * This function adds various hooks on Conductor Widgets to modify output.
		 */
		function add_unordered_list_hooks( $instance, $widget ) {
			add_action( 'conductor_widget_title_after', array( $this, 'conductor_widget_title_after' ), 10, 3 ); // Opening UL
			add_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Closing UL
			add_filter( 'conductor_widget_featured_image_size', array( $this, 'conductor_widget_featured_image_size' ), 10, 3 ); // Featured Image Size
		}

		/**
		 * This function removes various hooks on Conductor Widgets to modify output.
		 */
		function remove_unordered_list_hooks( $instance, $widget ) {
			remove_action( 'conductor_widget_title_after', array( $this, 'conductor_widget_title_after' ) ); // Opening UL
			remove_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Closing UL
			remove_filter( 'conductor_widget_featured_image_size', array( $this, 'conductor_widget_featured_image_size' ) ); // Featured Image Size
		}

		/**
		 * This function adds various hooks on Conductor Widgets to modify output.
		 */
		function add_list_item_hooks( $query, $instance, $widget ) {
			// Pagination
			if ( $query->has_pagination() ) {
				remove_action( 'conductor_widget_after', array( $this, 'conductor_widget_after' ) ); // Closing UL
				add_action( 'conductor_widget_pagination_before', array( $this, 'conductor_widget_pagination_before' ) ); // Closing UL
			}

			add_filter( 'conductor_widget_wrapper_html_element', array( $this, 'conductor_widget_wrapper_html_element' ) ); // Wrapper Element
			add_filter( 'conductor_widget_css_classes', array( $this, 'conductor_widget_css_classes' ) ); // CSS Classes
		}

		/**
		 * This function removes various hooks on Conductor Widgets to modify output.
		 */
		function remove_list_item_hooks( $query, $instance, $widget ) {
			// Pagination
			if ( $query->has_pagination() )
				remove_action( 'conductor_widget_pagination_before', array( $this, 'conductor_widget_pagination_before' ) ); // Closing UL

			remove_filter( 'conductor_widget_wrapper_html_element', array( $this, 'conductor_widget_wrapper_html_element' ) ); // Wrapper Element
			remove_filter( 'conductor_widget_css_classes', array( $this, 'conductor_widget_css_classes' ) ); // CSS Classes
		}


		/*********************
		 * Display Functions *
		 *********************/

		/**
		 * This function adds an opening unordered list tag after the Conductor Widget title.
		 */
		function conductor_widget_title_after( $instance, $args, $widget ) {
		?>
			<ul class="conductor-list conductor-dp-list">
		<?php
		}

		/**
		 * This function adds a closing unordered list tag after the Conductor Widget.
		 */
		function conductor_widget_after() {
		?>
			</ul>
		<?php
		}

		/**
		 * This function adds a closing unordered list tag before the Conductor Widget pagination
		 * if necessary.
		 */
		function conductor_widget_pagination_before() {
			?>
			</ul>
		<?php
		}

		/**
		 * This function defaults the featured image size to thumbnail if a size is not already set.
		 */
		function conductor_widget_featured_image_size( $conductor_thumbnail_size, $instance, $post ) {
			// Default to thumbnail
			if ( empty( $instance['post_thumbnails_size'] ) )
				$conductor_thumbnail_size = 'thumbnail';

			return $conductor_thumbnail_size;
		}

		/**
		 * This function adjusts the Conductor Widget wrapper HTML element to a list item.
		 */
		function conductor_widget_wrapper_html_element() {
			// List Item
			return 'li';
		}

		/**
		 * This function adds the CSS classes on this Conductor Widget.
		 */
		function conductor_widget_css_classes( $classes ) {
			// List Item Classes
			$classes[] = 'conductor-list-item';
			$classes[] = 'conductor-dp-list-item';

			return $classes;
		}

		/**
		 * This function enqueues scripts & styles on the front-end for Conductor Widget Displays.
		 */
		public function wp_enqueue_scripts() {
			// Conductor Widget Styles (only enqueue styles if this widget is active )
			$conductor_widget = Conduct_Widget();
			if ( is_active_widget( false, false, $conductor_widget->id_base, true ) )
				wp_enqueue_style( 'conductor-widget-display-list', Conductor_Display_Pack_Addon::plugin_url() . '/assets/css/widgets/conductor-widget-display-list.css', array( 'conductor-widget' ) );
		}
	}
}

/**
 * Create an instance of the Conductor_Widget_Display_List class.
 */
function Conduct_Widget_Display_List() {
	return Conductor_Widget_Display_List::instance();
}

Conduct_Widget_Display_List(); // Conduct your content!