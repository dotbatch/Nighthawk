<?php
/**
 * Plugin Name: Conductor - WooCommerce Add-On
 * Plugin URI: http://www.conductorplugin.com/
 * Description: Add WooCommerce support to Conductor Widgets.
 * Version: 1.0.0
 * Author: Slocum Studio
 * Author URI: http://www.slocumstudio.com/
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_WooCommerce_Add_On' ) ) {
	final class Conductor_WooCommerce_Add_On {
		/**
		 * @var string
		 */
		public static $version = '1.0.0';

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
			include_once( 'includes/class-conductor-widget-woocommerce-add-on.php' ); // Conductor Widget WooCommerce Add-On Class

			// Admin Only
			if ( is_admin() ) {}

			// Front-End Only
			if ( ! is_admin() ) {}
		}

		/**
		 * Allow add-on updates.
		 */
		private function updates() {
			// Create a new instance of the Conductor Updates class for this add-on
			if ( class_exists( 'Conductor_Updates' ) ) {
				$this->updater = new Conductor_Updates( array(
					'version'     => Conductor_WooCommerce_Add_On::$version,
					'name'        => 'WooCommerce',
					'plugin_file' => Conductor_WooCommerce_Add_On::plugin_file()
				) );
			}
		}

		/**
		 * This function checks to see if Conductor is enabled.
		 */
		function plugins_loaded() {
			include_once( ABSPATH . 'wp-admin/includes/plugin.php' );

			// If Conductor, Conductor Custom Fields Add-On, and WooCommerce are not active
			if ( ! class_exists( 'Conductor' ) || ! class_exists( 'Conductor_Custom_Fields_Addon' ) || ! class_exists( 'WooCommerce' ) ) {
				// De-activate this plugin
				if ( is_plugin_active( plugin_basename( __FILE__ ) ) ) {
					deactivate_plugins( plugin_basename( __FILE__ ) );
					unset( $_GET[ 'activate' ] );

					// Show admin notice
					add_action( 'admin_notices', array( $this, 'admin_notices' ) );
				}

			}

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
				<p>
					<?php printf( __( 'Conductor WooCommerce Add-on requires the following: %1$s, %2$s, and %3$s. Please install &amp; activate all of the required assets and try again.', 'conductor-woocommerce-cf' ), 'Conductor', 'Conductor Custom Fields Add-On', 'WooCommerce' ); ?>
				</p>
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
 * Create an instance of the Conductor_WooCommerce_Add_On class.
 */
function Conduct_WooCommerce_Custom_Fields_Add_On() {
	return Conductor_WooCommerce_Add_On::instance();
}

Conduct_WooCommerce_Custom_Fields_Add_On(); // Conduct your content!