<?php
/**
 * Conductor Display Pack
 *
 * @class Conductor_Display_Pack
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_Display_Pack' ) ) {
	class Conductor_Display_Pack {
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
			add_action( 'conductor_widget_includes', array( $this, 'conductor_widget_includes' ) );
		}


		/**
		 * This function includes various files that are used to create new Conductor Widget layouts.
		 */
		public function conductor_widget_includes( $widget ) {
			// List
			include_once( Conductor_Display_Pack_Addon::plugin_dir() . '/includes/displays/class-conductor-widget-display-list.php' );

			// Table
			include_once( Conductor_Display_Pack_Addon::plugin_dir() . '/includes/displays/class-conductor-widget-display-table.php' );

			// Grid
			include_once( Conductor_Display_Pack_Addon::plugin_dir() . '/includes/displays/class-conductor-widget-display-grid.php' );
		}
	}
}

/**
 * Create an instance of the Conductor_Display_Pack class.
 */
function Conduct_Display_Pack() {
	return Conductor_Display_Pack::instance();
}

Conduct_Display_Pack(); // Conduct your content!