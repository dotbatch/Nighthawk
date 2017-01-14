<?php
/**
 * Conductor Genesis Addon
 *
 * @class Conductor_Genesis_Addon
 * @author Slocum Studio
 * @version 1.0.0
 * @since 1.0.0
 */

if ( ! class_exists( 'Conductor_Genesis_Addon' ) ) {
	class Conductor_Genesis_Addon {
		/**
		 * @var string
		 */
		public static $version = '1.0.0';

		/**
		 * @var Conductor_Genesis_Addon, Instance of the class
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
			add_action( 'wp_enqueue_scripts', array( $this, 'wp_enqueue_scripts' ), 50 );
			add_filter( 'conductor_widget_query', array( $this, 'conductor_widget_query' ), 9999, 5 ); // Conductor Widget Query (late)
		}

		/**
		 * This function dequeues and enqueues scripts and styles.
		 */
		public function wp_enqueue_scripts() {
			// Dequeue default Conductor/Conductor Widget styles
			wp_dequeue_style( 'conductor' );
			wp_dequeue_style( 'conductor-widget' );

			// Conductor Widget Genesis
			wp_enqueue_style( 'conductor-genesis', Conductor_Genesis::plugin_url() . '/assets/css/conductor-genesis.css', '', self::$version );
		}

		/**
		 * This function modifies the Conductor Widget Query based on the current $query.
		 */
		function conductor_widget_query( $query, $conductor_widget_query_args, $instance, $args, $widget ) {
			// If we don't already have a query
			if ( empty( $query ) )
				// Create an instance of the Genesis query to add genesis features to Conductor Widgets
				$query = new Conductor_Genesis_Query( $conductor_widget_query_args );

			return $query;
		}
	}
}

/**
 * Create an instance of the Conductor_Genesis_Addon class.
 */
function Conduct_Genesis_Addon() {
	return Conductor_Genesis_Addon::instance();
}

Conduct_Genesis_Addon(); // Conduct your content!