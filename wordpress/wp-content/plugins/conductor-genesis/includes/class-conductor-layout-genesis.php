<?php
/**
 * Conductor Layout Genesis - Uses the layout chosen in conductor but by using Genesis layouts.
 *
 * @class Conductor_Hooks_Genesis
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if ( ! class_exists( 'Conductor_Layout_Genesis' ) ) {
	class Conductor_Layout_Genesis {
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
		public function __construct() {
			// Genesis
			add_filter( 'genesis_site_layout', array( $this, 'genesis_site_layout' ) );

			// Conductor
			add_filter( 'conductor_sidebar_args', array( $this, 'conductor_sidebar_args' ), 10, 4 );
			add_filter( 'dynamic_sidebar_params', array( $this, 'dynamic_sidebar_params' ) );
		}

		/**
		 * Create the layout using Conductor layout but Genesis structure
		 *
		 * @param $layout
		 *
		 * @return null|string
		 */
		public function genesis_site_layout( $layout ) {
			// Conductor only
			if ( Conductor::is_conductor() ) {
				// Grab Conductor content layout
				$content_layout = Conductor::get_conductor_content_layout();

				// Fetch the Genesis body class for this Conductor content layout
				$layout = $this->get_conductor_genesis_layout( ( isset( $content_layout['value'] ) ) ? $content_layout['value'] : false );
			}

			return $layout;
		}

		/**
		 * This function removes the widget CSS class from the Conductor content sidebar.
		 */
		public function conductor_sidebar_args( $sidebar_args, $sidebar_id, $content_layout, $content_layouts ) {
			// Content sidebar
			if ( $sidebar_id === 'content' )
				// Remove "widget" CSS class
				$sidebar_args['before_widget'] = str_replace( 'class="widget ', 'class="entry ', $sidebar_args['before_widget'] );

			return $sidebar_args;
		}

		/**
		 * This function adjusts the parameters for widgets within the Conductor content sidebar.
		 */
		public function dynamic_sidebar_params( $params ) {
			// Grab the Conductor Widget instance
			$conductor_widget = Conduct_Widget();

			// Conductor Widgets only
			if ( $conductor_widget->id_base === _get_widget_id_base( $params[0]['widget_id'] ) ) {
				// Conductor Content Sidebar
				if ( Conductor::is_conductor() && conductor_is_active_sidebar( 'content' ) && $params[0]['id'] === Conductor::get_conductor_content_layout_sidebar_id( 'content' ) )
					// Remove "entry" CSS class
					$params[0]['before_widget'] = str_replace( 'class="entry ', 'class=" ', $params[0]['before_widget'] );
			}

			return $params;
		}


		/**********************
		 * Internal Functions *
		 **********************/

		/**
		 * Return the Genesis layout where the condition matches the Conductor chosen layout
		 *
		 * @param $conductor_layout
		 *
		 * @return null|string
		 */
		public function get_conductor_genesis_layout( $conductor_layout ) {
			// Switch Conductor layout
			switch ( $conductor_layout ) {
				// Conductor - Full Width
				case 'cols-1':
					$layout = 'full-width-content';
					break;

				// Conductor - Content, Sidebar
				case 'cols-2':
					$layout = 'content-sidebar';
					break;

				// Conductor - Sidebar, Content
				case 'cols-2-r';
					$layout = 'sidebar-content';
					break;

				// Conductor - Content, Sidebar, Secondary Sidebar
				case 'cols-3':
					$layout = 'content-sidebar-sidebar';
					break;

				// Conductor - Sidebar, Content, Secondary Sidebar
				case 'cols-3-m':
					$layout = 'sidebar-content-sidebar';
					break;

				// Conductor - Sidebar, Secondary Sidebar, Content
				case 'cols-3-r':
					$layout = 'sidebar-sidebar-content';
					break;

				// Conductor Default (disabled) or non standard layout
				default:
					$layout = null;
					break;
			}

			return $layout;
		}
	}
}

/**
 * Create an instance of the Conductor_HTML_Genesis class.
 */
function Conduct_Layout_Genesis() {
	return Conductor_Layout_Genesis::instance();
}

Conduct_Layout_Genesis(); // Conduct your content!