<?php
/**
 * Conductor Display Pack Admin
 *
 * @class Conductor_Admin_Display_Pack
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_Admin_Display_Pack' ) ) {
	class Conductor_Admin_Display_Pack {
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
			add_action( 'admin_enqueue_scripts', array( $this, 'admin_enqueue_scripts' ) ); // Enqueue admin scripts
			add_filter( 'conductor_widget_displays', array( $this, 'conductor_widget_displays' ), 10, 3 );

			// Displays
			add_action( 'conductor_widget_settings_display_preview_list', array( $this,  'conductor_widget_settings_display_preview_list' ), 10, 2 ); // List
			add_action( 'conductor_widget_settings_display_preview_table', array( $this,  'conductor_widget_settings_display_preview_table' ), 10, 2 ); // Table
			add_action( 'conductor_widget_settings_display_preview_grid', array( $this,  'conductor_widget_settings_display_preview_grid' ), 10, 2 ); // Grid
		}


		/**
		 * This function enqueues the necessary scripts and styles associated with this widget on admin.
		 */
		function admin_enqueue_scripts( $hook ) {
			// Only on Widgets Admin Page
			if ( $hook === 'widgets.php' )
				wp_enqueue_style( 'conductor-display-pack-admin', Conductor_Display_Pack_Addon::plugin_url() . '/assets/css/conductor-display-pack-admin.css', array( 'conductor-widget-admin' ) );
		}

		/**
		 * This function adds to the list of Conductor widget layouts displays.
		 */
		public function conductor_widget_displays( $conductor_widget_displays, $widget_instance, $widget ) {
			// List
			$conductor_widget_displays['list'] = __( 'List', 'conductor-dp' );

			// Table
			$conductor_widget_displays['table'] = __( 'Table', 'conductor-dp' );

			// Grid
			$conductor_widget_displays['grid'] = __( 'Grid', 'conductor-dp' );

			return $conductor_widget_displays;
		}

		/**
		 * This function outputs the markup for the List Conductor widget layout.
		 */
		function conductor_widget_settings_display_preview_list( $instance, $widget ) {
		?>
			<div class="posts posts-list">
				<div class="post post-list">
					<div class="list-item dashicons dashicons-editor-ul"></div>
					<div class="list-item dashicons dashicons-editor-ul"></div>
				</div>
			</div>
		<?php
		}

		/**
		 * This function outputs the markup for the Table Conductor widget layout.
		 */
		function conductor_widget_settings_display_preview_table( $instance, $widget ) {
		?>
			<div class="posts posts-table">
				<div class="post post-table">
					<div class="table-row">
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
					</div>
					<div class="table-row">
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
					</div>
					<div class="table-row">
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
					</div>
					<div class="table-row">
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
						<div class="table-cell"></div>
					</div>
				</div>
			</div>
		<?php
		}

		/**
		 * This function outputs the markup for the Grid Conductor widget layout.
		 */
		function conductor_widget_settings_display_preview_grid( $instance, $widget ) {
			?>
			<div class="posts posts-grid">
				<div class="post post-grid">
					<div class="grid dashicons dashicons-editor-video"></div>
					<div class="grid dashicons dashicons-editor-video"></div>
				</div>
			</div>
		<?php
		}
	}
}

/**
 * Create an instance of the Conductor_Admin_Display_Pack class.
 */
function Conduct_Admin_Display_Pack() {
	return Conductor_Admin_Display_Pack::instance();
}

Conduct_Admin_Display_Pack(); // Conduct your content!