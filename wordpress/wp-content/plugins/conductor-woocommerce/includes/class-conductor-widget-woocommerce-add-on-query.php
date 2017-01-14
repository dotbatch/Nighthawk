<?php
/**
 * Conductor Widget Woocommerce Add-On Query - Helper class used for querying/displaying WooCommerce custom fields within Conductor.
 *
 * @class Conductor_Widget_WooCommerce_Add_On_Query
 * @author Slocum Studio
 * @version 1.0.0
 * @since 1.0.0
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conduct_Widget_WooCommerce_Add_On_Query' ) ) {
	class Conductor_Widget_WooCommerce_Add_On_Query extends Conductor_Widget_Query {
		/**
		 * @var string
		 */
		public $version = '1.0.0';

		/**
		 * @var array, An array of custom fields used within this query
		 */
		public static $custom_fields = array();

		/**
		 * @var string, Label for Add to Cart button
		 */
		public static $add_to_cart_label = '';

		/**
		 * @var WC_Product, WooCommerce product data
		 */
		public static $product = false;

		/**
		 * @var integer, Current custom field being output
		 */
		public static $current_custom_field = 0;

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
			add_action( 'wp_print_styles', array( get_class(), 'wp_print_styles' ) ); // Output CSS Adjustments for Add to Cart button
			add_action( 'conductor_widget_query_add_display_content', array( get_class(), 'conductor_widget_query_add_display_content' ),10, 5 ); // Add necessary filters and set data on Conductor Widgets
		}

		/**
		 * This function outputs CSS to adjust the WooCommerce Add to Cart buttons on Conductor Widgets.
		 */
		public static function wp_print_styles() {
		?>
			<style type="text/css">
				.conductor-widget .woocommerce a.button.add_to_cart_button {
					margin-right: 37px;
					word-wrap: break-word;
					white-space: pre-wrap;
				}
			</style>
		<?php
		}

		/**
		 * This function adds an action to reset the current custom field index value after
		 * each post within a Conductor Widget
		 */
		public static function conductor_widget_query_add_display_content( $element, $priority, $widget_number, $display_content_args_count, $query ) {
			// Only on the Add to Cart custom field
			if ( $element['type'] === 'custom_field' && $element['id'] === '_woocommerce_add_to_cart' ) {
				self::$add_to_cart_label = $element['label']; // Set the label

				// Filter WooCommerce Add to Cart text
				add_filter( 'woocommerce_product_add_to_cart_text', array( get_class(), 'woocommerce_product_add_to_cart_text' ) );

				// Remove WooCommerce Add to Cart text filter
				if ( ! has_action( 'conductor_widget_after', array( get_class(), 'conductor_widget_after' ) ) )
					add_action( 'conductor_widget_after', array( get_class(), 'conductor_widget_after' ), 99999 );
			}
		}

		/**
		 * This function outputs the WooCommerce Add to Cart Field for Conductor Widgets.
		 */
		public static function conductor_widget_woocommerce_add_to_cart( $post, $instance, $widget, $query ) {
			// Setup custom field object data
			$custom_field_object = array();

			if ( isset( $instance['output'] ) && ! empty( $instance['output'] ) )
				foreach ( $instance['output'] as $element )
					if ( $element['id'] === '_woocommerce_add_to_cart' )
						$custom_field_object = $element;

			do_action( 'conductor_widget_custom_field_before', $post, $instance, $custom_field_object );
			do_action( 'conductor_widget_woocommerce_add_to_cart_before', $post, $instance, $custom_field_object );
			?>
			<div class="custom-field custom-field-<?php echo esc_attr( $custom_field_object['id'] ); ?> conductor-cf">
				<?php echo do_shortcode( '[add_to_cart id="' . $post->ID . '" style="" show_price="false"]' ); ?>
			</div>
			<?php
			do_action( 'conductor_widget_woocommerce_add_to_cart_after', $post, $instance, $custom_field_object );
			do_action( 'conductor_widget_custom_field_after', $post, $instance, $custom_field_object );
		}

		/**
		 * This function outputs the WooCommerce Price Field for Conductor Widgets.
		 */
		public static function conductor_widget_woocommerce_price( $post, $instance, $widget, $query ) {
			// Setup WooCommerce Product data
			$product = ( empty( self::$product ) ) ? wc_setup_product_data( $post ) : self::$product;

			// If we have a product
			if ( $product ) :
				// Setup custom field object data
				$custom_field_object = array();

				if ( isset( $instance['output'] ) && ! empty( $instance['output'] ) )
					foreach ( $instance['output'] as $element )
						if ( $element['id'] === '_woocommerce_price' )
							$custom_field_object = $element;

				do_action( 'conductor_widget_custom_field_before', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_woocommerce_price_before', $post, $instance, $custom_field_object );
			?>
				<p class="custom-field custom-field-<?php echo esc_attr( $custom_field_object['id'] ); ?>">
					<?php if ( $custom_field_object['label'] !== $custom_field_object['id'] ) : // Custom Field Label ?>
						<span class="custom-field-label"><?php echo $custom_field_object['label']; ?></span>
					<?php endif; ?>

					<?php if ( $price = $product->get_price_html() ) : // Custom Field Value ?>
						<span class="custom-field-val"><?php echo $price; ?></span>
					<?php endif; ?>

				</p>
			<?php
				do_action( 'conductor_widget_woocommerce_price_after', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_custom_field_after', $post, $instance, $custom_field_object );
			endif;
		}

		/**
		 * This function outputs the WooCommerce Dimensions for Conductor Widgets.
		 */
		public static function conductor_widget_woocommerce_dimensions( $post, $instance, $widget, $query ) {
			// Setup WooCommerce Product data
			$product = ( empty( self::$product ) ) ? wc_setup_product_data( $post ) : self::$product;

			// If we have a product
			if ( $product ) :
				// Setup custom field object data
				$custom_field_object = array();

				if ( isset( $instance['output'] ) && ! empty( $instance['output'] ) )
					foreach ( $instance['output'] as $element )
						if ( $element['id'] === '_woocommerce_dimensions' )
							$custom_field_object = $element;

				do_action( 'conductor_widget_custom_field_before', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_woocommerce_dimensions_before', $post, $instance, $custom_field_object );
				?>
				<p class="custom-field custom-field-<?php echo esc_attr( $custom_field_object['id'] ); ?>">
					<?php if ( $custom_field_object['label'] !== $custom_field_object['id'] ) : // Custom Field Label ?>
						<span class="custom-field-label"><?php echo $custom_field_object['label']; ?></span>
					<?php endif; ?>

					<?php if ( $dimensions = $product->get_dimensions() ) : // Custom Field Value ?>
						<span class="custom-field-val"><?php echo $dimensions; ?></span>
					<?php endif; ?>

				</p>
				<?php
				do_action( 'conductor_widget_woocommerce_dimensions_after', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_custom_field_after', $post, $instance, $custom_field_object );
			endif;
		}

		/**
		 * This function outputs the WooCommerce Stock for Conductor Widgets.
		 */
		public static function conductor_widget_woocommerce_stock( $post, $instance, $widget, $query ) {
			// Setup WooCommerce Product data
			$product = ( empty( self::$product ) ) ? wc_setup_product_data( $post ) : self::$product;

			// If we have a product
			if ( $product ) :
				// Setup custom field object data
				$custom_field_object = array();

				if ( isset( $instance['output'] ) && ! empty( $instance['output'] ) )
					foreach ( $instance['output'] as $element )
						if ( $element['id'] === '_woocommerce_stock' )
							$custom_field_object = $element;

				do_action( 'conductor_widget_custom_field_before', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_woocommerce_stock_before', $post, $instance, $custom_field_object );
				?>
				<p class="custom-field custom-field-<?php echo esc_attr( $custom_field_object['id'] ); ?>">
					<?php if ( $custom_field_object['label'] !== $custom_field_object['id'] ) : // Custom Field Label ?>
						<span class="custom-field-label"><?php echo $custom_field_object['label']; ?></span>
					<?php endif; ?>

					<?php if ( $stock = $product->get_stock_quantity() ) : // Custom Field Value ?>
						<span class="custom-field-val"><?php echo $stock; ?></span>
					<?php endif; ?>

				</p>
				<?php
				do_action( 'conductor_widget_woocommerce_stock_after', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_custom_field_after', $post, $instance, $custom_field_object );
			endif;
		}

		/**
		 * This function outputs the WooCommerce Stock Status for Conductor Widgets.
		 */
		public static function conductor_widget_woocommerce_stock_status( $post, $instance, $widget, $query ) {
			// Setup WooCommerce Product data
			$product = ( empty( self::$product ) ) ? wc_setup_product_data( $post ) : self::$product;

			// If we have a product
			if ( $product ) :
				// Setup custom field object data
				$custom_field_object = array();

				if ( isset( $instance['output'] ) && ! empty( $instance['output'] ) )
					foreach ( $instance['output'] as $element )
						if ( $element['id'] === '_woocommerce_stock_status' )
							$custom_field_object = $element;

				do_action( 'conductor_widget_custom_field_before', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_woocommerce_stock_status_before', $post, $instance, $custom_field_object );
				?>
				<p class="custom-field custom-field-<?php echo esc_attr( $custom_field_object['id'] ); ?>">
					<?php if ( $custom_field_object['label'] !== $custom_field_object['id'] ) : // Custom Field Label ?>
						<span class="custom-field-label"><?php echo $custom_field_object['label']; ?></span>
					<?php endif; ?>

					<?php if ( $stock_status = $product->get_availability() ) : // Custom Field Value ?>
						<span class="custom-field-val stock <?php esc_attr( $stock_status['class'] ); ?>"><?php echo esc_html( $stock_status['availability'] ); ?></span>
					<?php endif; ?>

				</p>
				<?php
				do_action( 'conductor_widget_woocommerce_stock_status_after', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_custom_field_after', $post, $instance, $custom_field_object );
			endif;
		}

		/**
		 * This function outputs the WooCommerce Weight for Conductor Widgets.
		 */
		public static function conductor_widget_woocommerce_weight( $post, $instance, $widget, $query ) {
			// Setup WooCommerce Product data
			$product = ( empty( self::$product ) ) ? wc_setup_product_data( $post ) : self::$product;

			// If we have a product
			if ( $product ) :
				// Setup custom field object data
				$custom_field_object = array();

				if ( isset( $instance['output'] ) && ! empty( $instance['output'] ) )
					foreach ( $instance['output'] as $element )
						if ( $element['id'] === '_woocommerce_weight' )
							$custom_field_object = $element;

				do_action( 'conductor_widget_custom_field_before', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_woocommerce_weight_before', $post, $instance, $custom_field_object );
				?>
				<p class="custom-field custom-field-<?php echo esc_attr( $custom_field_object['id'] ); ?>">
					<?php if ( $custom_field_object['label'] !== $custom_field_object['id'] ) : // Custom Field Label ?>
						<span class="custom-field-label"><?php echo $custom_field_object['label']; ?></span>
					<?php endif; ?>

					<?php if ( $weight = $product->get_weight() ) : // Custom Field Value ?>
						<span class="custom-field-val"><?php echo $weight . ' ' . esc_attr( get_option( 'woocommerce_weight_unit' ) ); ?></span>
					<?php endif; ?>

				</p>
				<?php
				do_action( 'conductor_widget_woocommerce_weight_after', $post, $instance, $custom_field_object );
				do_action( 'conductor_widget_custom_field_after', $post, $instance, $custom_field_object );
			endif;
		}

		/**
		 * This function filters the text on WooCommerce Add to Cart buttons.
		 *
		 * @param $text
		 * @return string
		 */
		public static function woocommerce_product_add_to_cart_text( $text ) {
			// Adjust the label
			if ( ! empty( self::$add_to_cart_label ) )
				$text = self::$add_to_cart_label;

			return $text;
		}

		/**
		 * This function removes the WooCommerce Add to Cart text filter.
		 */
		public static function conductor_widget_after() {
			remove_filter( 'woocommerce_product_add_to_cart_text', array( get_class(), 'woocommerce_product_add_to_cart_text' ) );

			// Unhook this action
			remove_action( 'conductor_widget_after', array( get_class(), 'conductor_widget_after' ), 99999 );

			// Reset WooCommerce Product Data
			self::$product = false;
		}
	}
}

/**
 * Create an instance of the Conductor_Widget_WooCommerce_Add_On_Query class.
 */
function Conduct_Widget_WooCommerce_Add_On_Query() {
	return Conductor_Widget_WooCommerce_Add_On_Query::instance();
}

Conduct_Widget_WooCommerce_Add_On_Query(); // Conduct your content!