<?php
/**
 * Plugin Name: Conductor - Genesis Add-On
 * Plugin URI: http://www.conductorplugin.com/
 * Description: Add Genesis support to Conductor with ease.
 * Version: 1.0.1
 * Author: Slocum Studio
 * Author URI: http://www.slocumstudio.com/
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if ( ! class_exists( 'Conductor_Genesis' ) ) {
	final class Conductor_Genesis {
		/**
		 * @var string
		 */
		public static $version = '1.0.1';

		/**
		 * @var Conductor_Updates, Instance of the Conductor Updates class
		 */
		protected $updater;

		/**
		 * @var array, actions that have been removed using Conductor_Genesis::remove_action()
		 */
		protected static $removed_actions = array();

		/**
		 * @var Conductor_Genesis, Instance of the class
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
		function __construct() {
			// Hooks
			add_action( 'plugins_loaded', array( $this, 'plugins_loaded' ) ); // Plugins Loaded
		}

		/**
		 * Include required core files used in admin and on the front-end.
		 */
		private function includes() {
			// Include files
			include_once( 'includes/class-conductor-genesis-addon.php' ); // Conductor Genesis Add-On
			include_once( 'includes/class-conductor-genesis-customizer.php' ); // Conductor Genesis Customizer
			include_once( 'includes/class-conductor-widget-genesis.php' ); // Conductor Genesis Widget
			include_once( 'includes/class-conductor-hooks-genesis.php' ); // Conductor Genesis Hooks
			include_once( 'includes/class-conductor-html-genesis.php' ); // Conductor Genesis HTML
			include_once( 'includes/class-conductor-layout-genesis.php' ); // Conductor Genesis Layouts

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
			if ( class_exists( 'Conductor_Updates' ) )
				$this->updater = new Conductor_Updates( array(
					'version' => Conductor_Genesis::$version,
					'name' => 'Genesis Add-On',
					'plugin_file' => Conductor_Genesis::plugin_file()
				) );
		}

		/**
		 * This function checks to see if Conductor is enabled.
		 */
		function plugins_loaded() {
			include_once( ABSPATH . 'wp-admin/includes/plugin.php' );

			// If Conductor is not active
			if ( ! class_exists( 'Conductor' ) || get_option( 'template' ) !== 'genesis' ) {
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
				<p><?php printf( __( 'Conductor Genesis Add-On requires %1$s and %2$s. Please install &amp; activate all of the required assets and try again.', 'conductor-genesis' ), 'Conductor', 'Genesis' ); ?></p>
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

		/**
		 * This function allows an action to be removed without knowing the priority.
		 */
		public static function remove_action( $tag, $function_to_remove ) {
			global $wp_filter;

			$function_to_remove = _wp_filter_build_unique_id( $tag, $function_to_remove, false );

			// Determine if the tag exists and isn't empty
			if ( isset( $wp_filter[$tag] ) && ! empty( $wp_filter[$tag] ) ) {
				// Loop through each priority
				foreach ( $wp_filter[$tag] as $priority => $functions ) {
					// Store a reference to function names in a 0-index array
					$keys = array_keys( $functions );
					$keys_count = ( count( $keys ) - 1 ); // Match 0-index values

					// Loop through functions
					foreach ( $functions as $function_name => $function_data ) {
						// Create the array
						if ( ! isset( self::$removed_actions[$priority] ) )
							self::$removed_actions[$priority] = array();

						// Determine if this function matches the function to remove
						if ( $function_name === $function_to_remove ) {
							// Store a reference to the function
							self::$removed_actions[$priority][$function_name] = $function_data;

							// Store a reference to the position of the function in the array
							if ( $keys[key( $keys )] === $function_to_remove ) {
								// Reference to this function within self::$removed_actions
								$removed_action_function = &self::$removed_actions[$priority][$function_name];

								// Conductor Genesis key
								$removed_action_function['conductor_genesis'] = array();

								// Before
								if ( key( $keys ) !== 0 && current( $keys ) !== $function_name )
									$removed_action_function['conductor_genesis']['before'] = current( $keys );

								// After
								if ( key( $keys ) === 0 ) {
									// Advance the array pointer
									next( $keys );

									// After
									$removed_action_function['conductor_genesis']['after'] = current( $keys );

									// Rewind the array pointer
									prev( $keys );
								}
								// Advance the array pointer
								else if ( key( $keys ) < $keys_count )
									next( $keys );
								// Before
								else if ( key( $keys ) === $keys_count ) {
									// Rewind the array pointer
									prev( $keys );

									// Before
									$removed_action_function['conductor_genesis']['before'] = current( $keys );

									// Advance the array pointer
									next( $keys );
								}

								// After
								if ( key( $keys ) < $keys_count && current( $keys ) !== $function_name )
									$removed_action_function['conductor_genesis']['after'] = current( $keys );

								// Rewind the array pointer
								if ( key( $keys ) <= $keys_count )
									prev( $keys );
							}

							// Remove action
							remove_action( $tag, $function_to_remove, $priority );

							break;
						}

						// Advance the array pointer
						if ( key( $keys ) < $keys_count )
							next( $keys );
					}
				}
			}
		}

		/**
		 * This function allows actions that have previously been removed by Conductor_Genesis::remove_action()
		 * to be added at the correct priority.
		 */
		public static function add_action( $tag, $function_to_add ) {
			global $wp_filter, $merged_filters;

			$idx = _wp_filter_build_unique_id( $tag, $function_to_add, false );
			$accepted_args = 1;

			// Loop through each priority
			foreach ( self::$removed_actions as $priority => $functions )
				// Loop through functions
				foreach ( $functions as $function_name => $function_data )
					// Determine if this function matches the function to add
					if ( $function_name === $idx ) {
						// Reference to this function within self::$removed_actions
						$removed_action_function = &self::$removed_actions[$priority][$function_name];

						// Store a reference to the accepted arguments
						if ( isset( $function_data['accepted_args'] ) )
							$accepted_args = $function_data['accepted_args'];

						// Create the action data
						$filter_data = array(
							'function' => $function_to_add,
							'accepted_args' => $accepted_args
						);

						/*
						 * Add action (simulated - add_action( $tag, $function_to_add, $priority, $accepted_args );)
						 */

						// Before (references "after" element)
						if ( isset( $removed_action_function['conductor_genesis']['after'] ) && ! empty( $removed_action_function['conductor_genesis']['after'] ) ) {
							$wp_filter[$tag][$priority] = self::array_insert( $wp_filter[$tag][$priority], $function_to_add, $filter_data, 'before', $removed_action_function['conductor_genesis']['after'] );
							unset( $merged_filters[$tag] );
						}
						// After (references "before" element)
						else if ( isset( $removed_action_function['conductor_genesis']['before'] ) && ! empty( $removed_action_function['conductor_genesis']['before'] ) ) {
							$wp_filter[$tag][$priority] = self::array_insert( $wp_filter[$tag][$priority], $function_to_add, $filter_data, 'after', $removed_action_function['conductor_genesis']['before'] );
							unset( $merged_filters[ $tag ] );
						}
						// Fallback
						else
							add_action( $tag, $function_to_add, $priority, $accepted_args );

						// Remove the reference to the function
						unset( self::$removed_actions[$priority][$function_name] );

						break;
					}
		}


		/**********************
		 * Internal Functions *
		 **********************/

		/**
		 * This function inserts a value into an array before or after a specified key.
		 */
		public static function array_insert( $arr, $new_key, $value, $action, $key ) {
			// Check to see if the array key exists in the current array
			if ( array_key_exists( $key, $arr ) ) {
				$new = array();

				foreach ( $arr as $k => $v ) {
					// Before
					if ( $k === $key && $action == 'before' )
						$new[$new_key] = $value;

					// Current
					$new[$k] = $v;

					// After
					if ( $k === $key && $action == 'after' )
						$new[$new_key] = $value;
				}

				return $new;
			}

			// No key found, return the original array
			return $arr;
		}
	}
}

/**
 * Create an instance of the Conductor_Genesis class.
 */
function Conduct_Genesis() {
	return Conductor_Genesis::instance();
}

Conduct_Genesis(); // Conduct your content!