<?php
/**
 * Conductor Widget Genesis
 *
 * @class Conductor_Hooks_Genesis
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if ( ! class_exists( 'Conductor_Widget_Genesis' ) ) {
	class Conductor_Widget_Genesis {
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
		public function __construct() {
			// Hooks
			add_action( 'conductor_widget_includes', array( $this, 'conductor_widget_includes' ) ); // Conductor Widget Includes
			add_filter( 'conductor_widget_defaults', array( $this, 'conductor_widget_defaults' ) ); // Conductor Widget Defaults filter
		}

		/**
		 * This function includes the Conductor Widget Genesis Query Class on the Conductor Widget.
		 */
		function conductor_widget_includes( $widget ) {
			include_once( Conductor_Genesis::plugin_dir() . '/includes/class-conductor-genesis-query.php' ); // Conductor Widget Genesis Query Class
		}

		/**
		 * Hooks into the widget defaults and adds the Conductor Genesis footer meta
		 *
		 * Checks to make sure that an element hasn't been added with the same id or type
		 * 
		 * @param $args
		 *
		 * @return mixed
		 */
		public function conductor_widget_defaults( $defaults ) {
			$read_more_label = __( '[Read more...]', 'conductor-genesis' );

			// Loop through output elements to adjust the Read More label
			foreach ( $defaults['output'] as $output_priority => $output )
				// Read More
				if ( $output['id'] === 'read_more' )
					$defaults['output'][$output_priority]['label'] = $read_more_label;

			// Adjust the output features default read more label
			$defaults['output_features']['read_more']['edit_label'] = array(
				'default' => $read_more_label
			);

			// Loop through output elements to make sure Genesis footer meta doesn't already exist
			foreach ( $defaults['output'] as $output )
				// Genesis Footer Meta exists
				if ( $output['id'] === 'genesis_footer_meta' || $output['type'] === 'genesis_footer_meta' )
					return $defaults;

			// Determine the next priority in output elements (increments of 10)
			$priority = ( count( $defaults['output'] ) * 10 ) + 10;

			// Add the Genesis Footer Meta
			$defaults['output'][$priority] = array(
				'id'      => 'genesis_footer_meta',
				'label'   => __( 'Genesis Meta', 'conductor' ),
				'type'    => 'genesis_footer_meta',
				'visible' => true,
				'link'    => false
			);

			return $defaults;
		}
	}
}

/**
 * Create an instance of the Conductor_HTML_Genesis class.
 */
function Conduct_Widget_Genesis() {
	return Conductor_Widget_Genesis::instance();
}

Conduct_Widget_Genesis(); // Conduct your content!