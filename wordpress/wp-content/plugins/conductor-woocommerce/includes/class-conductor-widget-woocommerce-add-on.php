<?php
/**
 * Conductor Widget WooCommerce Add-On - Functionality used to enhance/modify the Conductor Widget.
 *
 * @class Conductor_Widget_WooCommerce_Add_On
 * @author Slocum Studio
 * @version 1.0.0
 * @since 1.0.0
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if( ! class_exists( 'Conductor_Widget_WooCommerce_Add_On' ) ) {
	class Conductor_Widget_WooCommerce_Add_On {
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
			if ( is_null( self::$_instance ) ) {
				self::$_instance = new self();
			}

			return self::$_instance;
		}

		/**
		 * This function sets up all of the actions and filters on instance. It also loads (includes)
		 * the required files and assets.
		 */
		function __construct( $args = array() ) {
			// Hooks
			add_action( 'conductor_widget_includes', array( $this, 'conductor_widget_includes' ) ); // Conductor Widget Includes
			add_action( 'admin_enqueue_scripts', array( $this, 'admin_enqueue_scripts' ) ); // Enqueue admin scripts
			add_action( 'conductor_widget_settings_orderby', array( $this, 'conductor_widget_settings_orderby' ), 20, 2 ); // Add options to the order by dropdown list
			//add_action( 'conductor_widget_feature_content_pieces_after', array( $this, 'conductor_widget_feature_content_pieces_after' ), 20, 2 ); // Add Product Categories

			add_filter( 'conductor_widget_admin_localize', array( $this, 'conductor_widget_admin_localize' ), 20 ); // Filter the localized data to include custom fields
			add_filter( 'conductor_query_args', array( $this, 'conductor_query_args' ), 5 ); // Filter Conductor widget arguments in Conductor
			add_filter( 'conductor_widget_update', array( $this, 'conductor_widget_update' ), 20, 3 ); // Adjust the callback function for certain custom fields
			
		}

		/**
		 * This function includes the Conductor Widget Custom Fields Query Class on the Conductor Widget.
		 */
		function conductor_widget_includes( $widget ) {
			include_once( Conductor_WooCommerce_Add_On::plugin_dir() . '/includes/class-conductor-widget-woocommerce-add-on-query.php' ); // Conductor Widget Custom Fields Query Class
		}

		/**
		 * This function enqueues the necessary scripts and styles associated with this widget on admin.
		 */
		public function admin_enqueue_scripts( $hook ) {
			// Only on Widgets Admin Page
			if ( $hook === 'widgets.php' )
				wp_enqueue_script( 'conductor-widget-woocommerce-add-on-admin', Conductor_WooCommerce_Add_On::plugin_url() . '/assets/js/conductor-widget-woocommerce-add-on-admin.js', array( 'conductor-widget-custom-fields-admin' ) );
		}

		/**
		 * This function filters Conductor Widget admin localized script data to include a list of custom fields.
		 */
		public function conductor_widget_admin_localize( $data ) {
			// Make sure custom fields are set
			if ( isset( $data['widgets']['conductor']['custom_fields'] ) && ! empty( $data['widgets']['conductor']['custom_fields'] ) ) {
				$woocommerce_custom_fields = apply_filters( 'conductor_widget_woocommerce_custom_fields', array(

					// Add to cart (custom functionality)
					array (
						'label' => 'WooCommerce: Add to Cart',
						'value' => '_woocommerce_add_to_cart'
					),
					// General: Price combines sale and regular, sale takes precedence
					array(
						'label' => 'WooCommerce: Price',
						'value' => '_woocommerce_price'
					),
					// Dimensions
					array(
						'label' => 'WooCommerce: Dimensions',
						'value' => '_woocommerce_dimensions'
					),
					// Inventory: Stock Quantity
					array(
						'label' => 'WooCommerce: Stock Quantity',
						'value' => '_woocommerce_stock'
					),
					// Inventory: Stock Status
					array(
						'label' => 'WooCommerce: Stock Status',
						'value' => '_woocommerce_stock_status'
					),
					// Shipping: Weight
					array(
						'label' => 'WooCommerce: Weight',
						'value' => '_woocommerce_weight'
					),
					// Shipping: Length
					array(
						'label' => 'WooCommerce: Length',
						'value' => '_length'
					),
					// Shipping: Width
					array(
						'label' => 'WooCommerce: Width',
						'value' => '_width'
					),
					// Shipping: Height
					array(
						'label' => 'WooCommerce: Height',
						'value' => '_height'
					),
					// Shipping: Class
					array(
						'label' => 'WooCommerce: Shipping Class',
						'value' => '_product_shipping_class'
					)
				) );

				// Merge the data
				$data['widgets']['conductor']['custom_fields'] = array_merge( $data['widgets']['conductor']['custom_fields'], $woocommerce_custom_fields );

				// Sort the keys by "natural order" if we have them
				if ( ! empty( $data['widgets']['conductor']['custom_fields'] ) ) {
					usort( $data['widgets']['conductor']['custom_fields'], array(
							$this,
							'usort_by_custom_field_label'
						) );
				}
			}

			return $data;
		}

		/**
		 * Adds a category dropdown for products
		 */
		public function conductor_widget_feature_content_pieces_after( $instance, $widget) {
		?>
			<p class="conductor-select-cat conductor-feature-many conductor-content-type-field conductor-content-type-product <?php echo ( ! $instance['feature_many'] || $instance['content_type'] !== 'product' ) ? 'conductor-hidden' : false; ?>">
				<?php // Product Category ?>
				<label for="<?php echo $widget->get_field_id( 'cat' ); ?>"><strong><?php _e( 'Category', 'conductor' ); ?></strong></label>
				<br/>
				<?php
					// Show a list of categories
					wp_dropdown_categories( array(
						'name'            => $widget->get_field_name( 'cat' ),
						'selected'        => $instance['query_args']['cat'],
						'catby'           => 'Name',
						'hierarchical'    => true,
						'show_option_all' => __( 'All Categories', 'conductor' ),
						'hide_empty'      => false,
						'class'           => 'conductor-select',
						'taxonomy'          => 'product_cat'
					) );
				?>
			</p>
		<?php
		}

		/**
		 * Add product options to the order by action hook
		 *
		 * @param $instance
		 * @see wp-content/plugins/conductor/includes/class-conductor-widget-default-query.php
		 */
		public function conductor_widget_settings_orderby( $instance ) {
		?>
			<option value="_price" <?php selected( $instance['query_args']['orderby'], '_price' ); ?> data-type="woocommerce"><?php _e( 'Price', 'conductor' ); ?></option>
			<option value="_stock" <?php selected( $instance['query_args']['orderby'], '_stock' ); ?> data-type="woocommerce"><?php _e( 'Stock Quantity', 'conductor' ); ?></option>
			<option value="_weight" <?php selected( $instance['query_args']['orderby'], '_weight' ); ?> data-type="woocommerce"><?php _e( 'Weight', 'conductor' ); ?></option>
		<?php
		}

		/**
		 * Filters the query to orderby the meta_value
		 *
		 * @param $query_args
		 * @param $type
		 * @param $widget_instance
		 */
		public function conductor_query_args( $query_args ) {
			$new_args = $query_args;

			// Allowed meta keys from WooCommerce
			$meta_keys = array( '_price', '_stock', '_weight' );

			if ( in_array( $query_args['orderby'], $meta_keys ) ) {
				$new_args['meta_key'] = $query_args['orderby'];
				$new_args['orderby'] = 'meta_value_num';
				return $new_args;
			} else {
				return $query_args;
			}
		}


		/**
		 * This function sanitizes Woocommerce Add-on elements on Conductor Widget update.
		 */
		function conductor_widget_update( $new_instance, $old_instance, $widget ) {
			// Adjust the callback on custom fields
			foreach( $new_instance['output'] as $priority => &$element )
				// Add To Cart
				if ( $element['id'] === '_woocommerce_add_to_cart' )
					// Static callback
					$element['callback'] = array( 'Conductor_Widget_WooCommerce_Add_On_Query', 'conductor_widget_woocommerce_add_to_cart' );
				// Price
				else if ( $element['id'] === '_woocommerce_price' )
					// Static callback
					$element['callback'] = array( 'Conductor_Widget_WooCommerce_Add_On_Query', 'conductor_widget_woocommerce_price' );
				// Dimensions
				else if ( $element['id'] === '_woocommerce_dimensions' )
					// Static callback
					$element['callback'] = array( 'Conductor_Widget_WooCommerce_Add_On_Query', 'conductor_widget_woocommerce_dimensions' );
				// Stock
				else if ( $element['id'] === '_woocommerce_stock' )
					// Static callback
					$element['callback'] = array( 'Conductor_Widget_WooCommerce_Add_On_Query', 'conductor_widget_woocommerce_stock' );
				// Stock Status
				else if ( $element['id'] === '_woocommerce_stock_status' )
					// Static callback
					$element['callback'] = array( 'Conductor_Widget_WooCommerce_Add_On_Query', 'conductor_widget_woocommerce_stock_status' );
				// Weight
				else if ( $element['id'] === '_woocommerce_weight' )
					// Static callback
					$element['callback'] = array( 'Conductor_Widget_WooCommerce_Add_On_Query', 'conductor_widget_woocommerce_weight' );

			return $new_instance;
		}


		/**
		 * This function is used by usort to order custom fields by label.
		 */
		function usort_by_custom_field_label( $a, $b ) {
			return strcasecmp( $a['label'], $b['label'] );
		}
	}
}

/**
 * Create an instance of the Conductor_Widget_WooCommerce_Add_On class.
 */
function Conduct_Widget_WooCommerce_Custom_Fields() {
	return Conductor_Widget_WooCommerce_Add_On::instance();
}

Conduct_Widget_WooCommerce_Custom_Fields(); // Conduct your content!