<?php
/**
 * Conductor Genesis Customizer
 *
 * @class Conductor_Genesis_Customizer
 * @author Slocum Studio
 * @version 1.0.0
 * @since 1.0.0
 */

if ( ! class_exists( 'Conductor_Genesis_Customizer' ) ) {
	class Conductor_Genesis_Customizer {
		/**
		 * @var string
		 */
		public static $version = '1.0.0';

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
		public function __construct( $args = array() ) {
			add_action( 'customize_preview_init', array( $this, 'customize_preview_init' ) ); // Customizer Preview Initialization
		}

		/**
		 * This function adds actions and filters to the Customizer Previewer.
		 */
		public function customize_preview_init() {
			add_action( 'wp_enqueue_scripts', array( $this, 'wp_enqueue_scripts' ) );
		}

		/**
		 * This function adjusts the Conductor content layouts Customizer control preview style
		 * in the Previewer
		 */
		public function wp_enqueue_scripts() {
			// De-register Conductor content layouts Customizer control preview style
			wp_deregister_style( 'conductor-content-layouts-customizer-control-preview' );

			// Re-enqueue Conductor content layouts Customizer control preview style to not include conductor as a dependency
			wp_enqueue_style( 'conductor-content-layouts-customizer-control-preview', Conductor::plugin_url() . '/assets/css/conductor-content-layouts-customizer-control-preview.css', array( 'buttons' ), Conductor::$version );
		}
	}
}

/**
 * Create an instance of the Conductor_Genesis_Customizer class.
 */
function Conduct_Genesis_Customizer() {
	return Conductor_Genesis_Customizer::instance();
}

Conduct_Genesis_Customizer(); // Conduct your content!