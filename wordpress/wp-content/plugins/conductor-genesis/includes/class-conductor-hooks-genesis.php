<?php
/**
 * Conductor Hooks Genesis
 *
 * @class Conductor_Hooks_Genesis
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_Hooks_Genesis' ) ) {
	class Conductor_Hooks_Genesis {
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
		function __construct() {
			// Conductor (only add actions once)
			add_action( 'conductor_content_wrapper_before', array( $this, 'conductor_content_wrapper_before' ), 1 ); // Early
			add_action( 'conductor_content_before', array( $this, 'conductor_content_before' ), 1 ); // Early
			add_action( 'conductor_content_before', array( $this, 'conductor_content_before_loop' ), 20 );
			add_action( 'conductor_widget_output_before', array( $this, 'conductor_widget_output_before' ), 20 );
			//add_action( 'conductor_widget_post_title_before', array( $this, 'conductor_widget_post_title_before' ), 20 );
			//add_action( 'conductor_widget_post_content_before', array( $this, 'conductor_widget_post_content_before' ), 20 );
			add_action( 'conductor_widget_output_after', array( $this, 'conductor_widget_output_after' ), 20 );
			add_action( 'conductor_content_after', array( $this, 'conductor_content_after_loop' ), 1 ); // Early
			add_action( 'conductor_content_after', array( $this, 'conductor_content_after' ), 20 );
			add_action( 'conductor_primary_sidebar_before', array( $this, 'conductor_primary_sidebar_before' ), 20 );
			add_action( 'conductor_primary_sidebar_after', array( $this, 'conductor_primary_sidebar_after' ), 1 ); // Early
			add_action( 'conductor_secondary_sidebar_before', array( $this, 'conductor_secondary_sidebar_before' ), 20 );
			add_action( 'conductor_secondary_sidebar_after', array( $this, 'conductor_secondary_sidebar_after' ), 1 ); // Early
			add_action( 'conductor_content_wrapper_after', array( $this, 'conductor_content_wrapper_after' ), 20 );
		}

		/**
		 * Adds the genesis_before_content_sidebar_wrap hook to the conductor_content_wrapper_before hook
		 */
		public function conductor_content_wrapper_before() {
			do_action( 'genesis_before_content_sidebar_wrap' );
		}

		/**
		 * Adds the genesis_before_content hook to the conductor_content_before hook
		 */
		public function conductor_content_before() {
			do_action( 'genesis_before_content' );
		}
		/**
		 * Adds the genesis_before_loop hook to the conductor_content_before hook
		 */
		public function conductor_content_before_loop() {
			do_action( 'genesis_before_loop' );
		}

		/**
		 * Adds the loop_start and genesis_before_entry hooks to the conductor_widget_output_before hook
		 */
		public function conductor_widget_output_before() {
			do_action( 'loop_start' );
			do_action( 'genesis_before_entry' );
			do_action( 'genesis_before_entry_content' );
		}

		/**
		 * Adds the genesis_entry_header hook to the conductor_widget_post_title_before hook
		 */
		// TODO: Necessary? Hooks attached to genesis_entry_header will probably output info we do not need
		public function conductor_widget_post_title_before() {
			//do_action( 'genesis_entry_header' );
		}

		/**
		 * Adds the genesis_entry_content hook to the conductor_widget_post_content_before hook
		 */
		// TODO: Necessary? Hooks attached to genesis_entry_content will probably output info we do not need
		public function conductor_widget_post_content_before() {
			//do_action( 'genesis_entry_content' );
		}

		/**
		 * Adds the genesis_entry_footer and genesis_after_entry and loop_end hooks to the conductor_widget_output_after hook
		 */
		// TODO: genesis_after_entry_widget_area seems to cause a never ending loop on single conducted pages, determine why this is happening (it happen when a Conductor Widget is placed in the after entry sidebar)
		public function conductor_widget_output_after() {
			// Remove the Genesis comments template
			Conductor_Genesis::remove_action( 'genesis_after_entry', 'genesis_get_comments_template' );

			// Remove Genesis entry footer markup
			Conductor_Genesis::remove_action( 'genesis_entry_footer', 'genesis_entry_footer_markup_open' );
			Conductor_Genesis::remove_action( 'genesis_entry_footer', 'genesis_entry_footer_markup_close' );
			Conductor_Genesis::remove_action( 'genesis_entry_footer', 'genesis_post_meta' );

			do_action( 'genesis_entry_footer' );
			do_action( 'genesis_after_entry_content' );

			if ( is_single() )
				Conductor_Genesis::remove_action( 'genesis_after_entry', 'genesis_after_entry_widget_area' );

			do_action( 'genesis_after_entry' );

			if ( is_single() )
				Conductor_Genesis::add_action( 'genesis_after_entry', 'genesis_after_entry_widget_area' );

			// Add Genesis entry footer markup
			Conductor_Genesis::add_action( 'genesis_entry_footer', 'genesis_post_meta' );
			Conductor_Genesis::add_action( 'genesis_entry_footer', 'genesis_entry_footer_markup_close' );
			Conductor_Genesis::add_action( 'genesis_entry_footer', 'genesis_entry_footer_markup_open' );

			// Add the Genesis comments template
			Conductor_Genesis::add_action( 'genesis_after_entry', 'genesis_get_comments_template' );

			do_action( 'loop_end' );
		}

		/**
		 * Adds the genesis_after_loop hook to the conductor_content_after hook
		 */
		public function conductor_content_after_loop() {
			do_action( 'genesis_after_loop' );
		}

		/**
		 * Adds the genesis_after_content hook to the conductor_content_after hook
		 */
		public function conductor_content_after() {
			// Remove default Genesis sidebar
			// TODO: Perhaps if the Conductor primary sidebar is empty, we can fall back to Genesis?
			Conductor_Genesis::remove_action( 'genesis_after_content', 'genesis_get_sidebar' );

			do_action( 'genesis_after_content' );

			// Add default Genesis sidebar
			Conductor_Genesis::add_action( 'genesis_after_content', 'genesis_get_sidebar' );
		}

		/**
		 * Adds the genesis_before_sidebar_widget_area hook to the conductor_primary_sidebar_before hook
		 */
		public function conductor_primary_sidebar_before() {
			do_action( 'genesis_before_sidebar_widget_area' );
		}

		/**
		 * Adds the genesis_after_sidebar_widget_area hook to the conductor_primary_sidebar_after hook
		 */
		public function conductor_primary_sidebar_after() {
			do_action( 'genesis_after_sidebar_widget_area' );
		}

		/**
		 * Adds the genesis_before_sidebar_alt_widget_area hook to the conductor_secondary_sidebar_before hook
		 */
		public function conductor_secondary_sidebar_before() {
			do_action( 'genesis_before_sidebar_alt_widget_area' );
		}

		/**
		 * Adds the genesis_after_sidebar_alt_widget_area hook to the conductor_secondary_sidebar_after hook
		 */
		public function conductor_secondary_sidebar_after() {
			do_action( 'genesis_after_sidebar_alt_widget_area' );
		}

		/**
		 * Adds the genesis_after_content_sidebar_wrap hook to the conductor_content_wrapper_after hook
		 */
		public function conductor_content_wrapper_after() {
			// Remove default Genesis secondary sidebar
			// TODO: Perhaps if the Conductor secondary sidebar is empty, we can fall back to Genesis?
			Conductor_Genesis::remove_action( 'genesis_after_content_sidebar_wrap', 'genesis_get_sidebar_alt' );

			do_action( 'genesis_after_content_sidebar_wrap' );

			// Add default Genesis secondary sidebar
			Conductor_Genesis::add_action( 'genesis_after_content_sidebar_wrap', 'genesis_get_sidebar_alt' );
		}

	}
}

/**
 * Create an instance of the Conductor_Hooks_Genesis class.
 */
function Conduct_Hooks_Genesis() {
	return Conductor_Hooks_Genesis::instance();
}

Conduct_Hooks_Genesis(); // Conduct your content!