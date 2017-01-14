<?php
/**
 * Plugin Name: Conductor - Display Pack Add-On
 * Plugin URI: http://www.conductorplugin.com/
 * Description: Enhance your Conductor Widget displays.
 * Version: 1.0.2
 * Author: Slocum Studio
 * Author URI: http://www.slocumstudio.com/
 */

// TODO: Adjust add-on description

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_Display_Pack_Addon' ) ) {
	final class Conductor_Display_Pack_Addon {
		/**
		 * @var string
		 */
		public static $version = '1.0.2';

		/**
		 * @var Conductor_Updates, Instance of the Conductor Updates class
		 */
		protected $updater;

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
		function __construct( ) {
			// Hooks
			add_action( 'plugins_loaded', array( $this, 'plugins_loaded' ) ); // Plugins Loaded
		}

		/**
		 * Include required core files used in admin and on the frontend.
		 */
		private function includes() {
			// All


			// Admin Only
			if ( is_admin() )
				include_once( 'includes/admin/class-admin-conductor-display-pack.php' ); // Conductor Display Pack Admin Class

			// Front-End Only
			if ( ! is_admin() )
				include_once( 'includes/class-conductor-display-pack.php' ); // Conductor Display Pack Class
		}

		/**
		 * Allow add-on updates.
		 */
		private function updates() {
			// Create a new instance of the Conductor Updates class for this add-on
			if ( class_exists( 'Conductor_Updates' ) )
				$this->updater = new Conductor_Updates( array(
					'version' => Conductor_Display_Pack_Addon::$version,
					'name' => 'Display Pack Add-On',
					'plugin_file' => Conductor_Display_Pack_Addon::plugin_file()
				) );
		}

		/**
		 * This function checks to see if Conductor is enabled.
		 */
		function plugins_loaded() {
			include_once( ABSPATH . 'wp-admin/includes/plugin.php' );

			// If Conductor is not active
			if ( ! class_exists( 'Conductor' ) ) {
				// De-activate this plugin
				if ( is_plugin_active( plugin_basename( __FILE__ ) ) ) {
					deactivate_plugins( plugin_basename( __FILE__ ) );
					unset( $_GET[ 'activate' ] );

					// Show admin notice
					add_action( 'admin_notices', array( $this, 'admin_notices' ) );
				}

				return false;
			}

			/*
			 * Conductor exists
			 */

			// Load required assets
			$this->includes();

			// Updates
			$this->updates();
		}

		/**
		 * This function outputs an admin notice if Conductor is not active
		 */
		function admin_notices() {
		?>
			<div class="updated error">
				<p><?php printf( __( 'Conductor Display Pack Add-On requires Conductor. Please install &amp; activate Conductor and try again.', 'conductor-dp' ) ); ?></p>
			</div>
		<?php
		}


		/********************
		 * Helper Functions *
		 ********************/

		/**
		 * This function returns the plugin url for Conductor without a trailing slash.
		 *
		 * @return string, URL for the Conductor plugin
		 */
		public static function plugin_url() {
			return untrailingslashit( plugins_url( '', __FILE__ ) );
		}

		/**
		 * This function returns the plugin directory for Conductor without a trailing slash.
		 *
		 * @return string, Directory for the Conductor plugin
		 */
		public static function plugin_dir() {
			return untrailingslashit( plugin_dir_path( __FILE__ ) );
		}

		/**
		 * This function returns a reference to this Conductor class file.
		 *
		 * @return string
		 */
		public static function plugin_file() {
			return __FILE__;
		}
	}
}

/**
 * Create an instance of the Conductor_Display_Pack_Addon class.
 */
function Conduct_Display_Pack_Addon() {
	return Conductor_Display_Pack_Addon::instance();
}

Conduct_Display_Pack_Addon(); // Conduct your content!