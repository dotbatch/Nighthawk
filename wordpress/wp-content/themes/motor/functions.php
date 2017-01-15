<?php
/**
 * motor functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package motor
 */


// Include the class (unless you are using the script as a plugin)
require_once( trailingslashit( get_template_directory() ) . 'inc/less/wp-less.php' );



if ( ! function_exists( 'motor_setup' ) ) {
	function motor_setup() {

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Loads the theme's translated strings.
		 */
		load_theme_textdomain( 'motor', get_template_directory() . '/languages' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'rw-top-menu' => esc_html__( 'Top Menu', 'motor' ),
			'rw-footer-menu-1' => esc_html__( 'Footer Menu 1', 'motor' ),
			'rw-footer-menu-2' => esc_html__( 'Footer Menu 2', 'motor' ),
			'rw-footer-menu-3' => esc_html__( 'Footer Menu 3', 'motor' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Editor custom stylesheet - for user
		add_editor_style('css/editor-style.css');

		// Declare WooCommerce support
		add_theme_support( 'woocommerce' );

		// Add Image Sizes
		add_image_size( 'motor_gallery', '390', '234', array('center', 'center') );
		add_image_size( 'motor_blog', '370', '210', array('center', 'center') );
		add_image_size( 'motor_blog_slider', '370', '210', false );
		add_image_size( 'motor_full', '1920', '1000', false );
		add_image_size( 'motor_200x200', '200', '200', array('center', 'center') );

	}
}
add_action( 'after_setup_theme', 'motor_setup' );



/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function motor_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'motor_content_width', 1200 );
}
add_action( 'after_setup_theme', 'motor_content_width', 0 );


// Register widget area
add_action( 'widgets_init', 'motor_widgets_init' );
function motor_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Blog Sidebar', 'motor' ),
		'id'            => 'motor_sidebar',
		'before_widget' => '<div class="blog-sb-widget">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widgettitle">',
		'after_title'   => '</h3>'
	) );
}


/**
 * Enqueue scripts and styles.
 */
function motor_scripts_styles() {

	// enqueue a .less stylesheet
	wp_enqueue_style( 'motor-less', get_template_directory_uri(). '/css/styles.less' );
	// Enqueue a styles
	wp_enqueue_style( 'motor-style', get_stylesheet_uri() );

	// Enqueue scripts
	wp_enqueue_script( 'fancybox', get_template_directory_uri().'/js/fancybox/fancybox.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'fancybox-thumbs', get_template_directory_uri().'/js/fancybox/helpers/jquery.fancybox-thumbs.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'flexslider', get_template_directory_uri().'/js/jquery.flexslider-min.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'masonry', get_template_directory_uri().'/js/masonry.pkgd.min.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'rangeslider', get_template_directory_uri().'/js/ion.rangeSlider.min.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'isotope', get_template_directory_uri().'/js/isotope.pkgd.min.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'formstyler', get_template_directory_uri().'/js/jquery.formstyler.min.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'motor-main', get_template_directory_uri().'/js/main.js', array( 'jquery' ), null, true);
	wp_enqueue_script( 'html5shiv', get_template_directory_uri().'/js/html5shiv.js' );
	wp_script_add_data( 'html5shiv', 'conditional', 'lt IE 9' );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}

	if (is_single() || is_page_template('page-contacts.php') || is_home() || is_archive() || is_search()) {
		global $motor_options;
		$gmaps_api = '';
		if (!empty($motor_options['motor_gmaps_api'])) {
			$gmaps_api = '?key='.esc_js($motor_options['motor_gmaps_api']);
		}
		wp_enqueue_script( 'google-maps', 'https://maps.googleapis.com/maps/api/js'.$gmaps_api, array(), null, true);
		wp_enqueue_script( 'motor-gmaps', get_template_directory_uri().'/js/gmaps.js', array( 'jquery' ), null, true);
	}

}
add_action( 'wp_enqueue_scripts', 'motor_scripts_styles' );



// Load More Ajax
add_action('wp_ajax_nopriv_motor_load_more', 'motor_load_more');
add_action('wp_ajax_motor_load_more', 'motor_load_more');
function motor_load_more () {
	if (isset($_POST['file'])) {
		include( trailingslashit( get_template_directory() ) . $_POST['file'] );
	}
	die();
}

// Gallery Load More Ajax
add_action('wp_ajax_nopriv_motor_gallery_load_more', 'motor_gallery_load_more');
add_action('wp_ajax_motor_gallery_load_more', 'motor_gallery_load_more');
function motor_gallery_load_more () {
	if (isset($_POST['file'])) {
		include( trailingslashit( get_template_directory() ) . $_POST['file'] );
	}
	die();
}

// Quick View Ajax
add_action('wp_ajax_nopriv_motor_quick_view', 'motor_quick_view');
add_action('wp_ajax_motor_quick_view', 'motor_quick_view');
function motor_quick_view () {

	if ( ! isset( $_REQUEST['product_id'] ) ) {
		die();
	}

	$product_id = intval( $_REQUEST['product_id'] );

	wp( 'p=' . $product_id . '&post_type=product' );

	if (isset($_POST['file'])) {
		include( trailingslashit( get_template_directory() ) . $_POST['file'] );
	}
	die();
}



/**
 * Load Languages
 */
add_action('after_setup_theme', 'vp_tb_load_textdomain');

function vp_tb_load_textdomain()
{
	load_theme_textdomain('motor', get_template_directory() . '/lang/');
}


if (class_exists('VP_Metabox')) {
	/**
	 * Include Custom Data Sources
	 */
	require_once( trailingslashit( get_template_directory() ) . 'admin/data_sources.php' );

	// Theme Options and Metaboxes
	require_once( trailingslashit( get_template_directory() ) . 'inc/theme-fields.php' );
}

// Theme Functions
require_once( trailingslashit( get_template_directory() ) . 'inc/theme-functions.php' );

// WooCommerce Functions
require_once( trailingslashit( get_template_directory() ) . 'inc/woocommerce.php' );

// TGM Plugins
require_once( trailingslashit( get_template_directory() ) . 'inc/tgm.php' );

// Demo Import
require_once( trailingslashit( get_template_directory() ) . 'framework-customizations/theme/hooks.php' );

// Less Css Variables
require_once( trailingslashit( get_template_directory() ) . 'inc/less/less-vars.php' );

// VC Shortcodes
if ( function_exists( 'vc_is_as_theme' ) ) {
	require_once( trailingslashit( get_template_directory() ) . 'inc/shortcodes.php' );
}



global $pagenow;
if ($pagenow !== 'admin.php') :

	if (!function_exists('woof_print_tax'))
	{
		function woof_print_tax($taxonomies, $tax_slug, $terms, $exclude_tax_key, $taxonomies_info, $additional_taxes, $woof_settings, $args, $counter)
		{

			global $WOOF;

			if ($exclude_tax_key == $tax_slug)
			{
				if (empty($terms))
				{
					return;
				}
			}

			//***

			if (!woof_only($tax_slug, 'taxonomy'))
			{
				return;
			}

			//***

			$allowed_html = array(
				'a' => Array(
					'href' => true,
					'title' => true
				),
				'abbr' => Array(
					'title' => true
				),
				'acronym' => Array(
					'title' => true
				),
				'b' => Array(),
				'blockquote' => Array(
					'cite' => true
				),
				'cite' => Array(),
				'code' => Array(),
				'del' => Array(
					'datetime' => true
				),
				'em' => Array(),
				'i' => Array(),
				'q' => Array(
					'cite' => true
				),
				's' => Array(),
				'strike' => Array(),
				'strong' => Array(),
				'div' => Array(
					'class' => true,
					'style' => true,
					'id' => true,
				),
				'ul' => Array(
					'class' => true,
					'style' => true,
				),
				'li' => Array(
					'class' => true,
					'style' => true,
				),
				'span' => Array(
					'class' => true,
					'style' => true,
					'tabindex' => true,
				),
				'input' => Array(
					'type' => true,
					'value' => true,
					'id' => true,
					'class' => true,
					'name' => true,
					'checked' => true,
					'data-tax' => true,
					'data-term-id' => true,
					'data-anchor' => true,
					'data-slug' => true,
					'style' => true,
					'autocomplete' => true,
				),
				'select' => Array(
					'type' => true,
					'value' => true,
					'id' => true,
					'class' => true,
					'name' => true,
					'style' => true,
					'data-placeholder' => true,
					'size' => true,
					'multiple' => true,
				),
				'option' => Array(
					'type' => true,
					'value' => true,
					'id' => true,
					'class' => true,
					'name' => true,
					'selected' => true,
					'style' => true,
				),
				'label' => Array(
					'for' => true,
					'class' => true,
					'style' => true,
				),
			);

			$args['taxonomy_info'] = $taxonomies_info[$tax_slug];
			$args['tax_slug'] = $tax_slug;
			$args['terms'] = $terms;
			$args['all_terms_hierarchy'] = $taxonomies[$tax_slug];
			$args['additional_taxes'] = $additional_taxes;

			//***
			$woof_container_styles = "";
			if ($woof_settings['tax_type'][$tax_slug] == 'radio' OR $woof_settings['tax_type'][$tax_slug] == 'checkbox')
			{
				if ($WOOF->settings['tax_block_height'][$tax_slug] > 0)
				{
					$woof_container_styles = "max-height:{$WOOF->settings['tax_block_height'][$tax_slug]}px; overflow-y: auto;";
				}
			}
			//***
			//https://wordpress.org/support/topic/adding-classes-woof_container-div
			$primax_class = sanitize_key(WOOF_HELPER::wpml_translate($taxonomies_info[$tax_slug]));
			?>
			<div data-css-class="woof_container_<?php echo esc_attr($tax_slug); ?>" class="woof_container woof_container_<?php echo esc_attr($woof_settings['tax_type'][$tax_slug]); ?> woof_container_<?php echo esc_attr($tax_slug); ?> woof_container_<?php echo esc_attr($counter); ?> woof_container_<?php echo esc_attr($primax_class); ?>">
				<div class="woof_container_overlay_item"></div>
				<div class="woof_container_inner woof_container_inner_<?php echo esc_attr($primax_class); ?>">
					<?php
					switch ($woof_settings['tax_type'][$tax_slug])
					{
						case 'checkbox':
							if ($WOOF->settings['show_title_label'][$tax_slug])
							{
								?>
								<h4><?php echo WOOF_HELPER::wpml_translate($taxonomies_info[$tax_slug]) ?></h4>
								<?php
							}
							?>
							<div <?php if (!empty($woof_container_styles)): ?>style="<?php echo esc_attr($woof_container_styles); ?>" class="woof_section_scrolled"<?php endif; ?>>
								<?php
								if (file_exists(get_template_directory() . '/views/html_types/checkbox.php')) {
									echo wp_kses($WOOF->render_html(get_template_directory() . '/views/html_types/checkbox.php', $args), $allowed_html);
								} else {
									echo wp_kses($WOOF->render_html(WOOF_PATH . 'views/html_types/checkbox.php', $args), $allowed_html);
								}
								?>
							</div>
							<?php
							break;
						case 'select':
							if ($WOOF->settings['show_title_label'][$tax_slug])
							{
								?>
								<h4><?php echo WOOF_HELPER::wpml_translate($taxonomies_info[$tax_slug]) ?></h4>
								<?php
							}
							if (file_exists(get_template_directory() . '/views/html_types/select.php')) {
								echo wp_kses($WOOF->render_html(get_template_directory() . '/views/html_types/select.php', $args), $allowed_html);
							} else {
								echo wp_kses($WOOF->render_html(WOOF_PATH . 'views/html_types/select.php', $args), $allowed_html);
							}
							break;
						case 'mselect':
							if ($WOOF->settings['show_title_label'][$tax_slug])
							{
								?>
								<h4><?php echo WOOF_HELPER::wpml_translate($taxonomies_info[$tax_slug]) ?></h4>
								<?php
							}
							if (file_exists(get_template_directory() . '/views/html_types/mselect.php')) {
								echo wp_kses($WOOF->render_html(get_template_directory() . '/views/html_types/mselect.php', $args), $allowed_html);
							} else {
								echo wp_kses($WOOF->render_html(WOOF_PATH . 'views/html_types/mselect.php', $args), $allowed_html);
							}
							break;

						default:
							if ($WOOF->settings['show_title_label'][$tax_slug])
							{
								?>
								<h4><?php echo WOOF_HELPER::wpml_translate($taxonomies_info[$tax_slug]) ?></h4>
								<?php
							}
							?>



							<div <?php if (!empty($woof_container_styles)):
							     ?>style="<?php echo strip_tags($woof_container_styles); ?>" class="woof_section_scrolled"<?php endif; ?>>
								<?php
								if (!empty(WOOF_EXT::$includes['taxonomy_type_objects']))
								{
									$is_custom = false;
									foreach (WOOF_EXT::$includes['taxonomy_type_objects'] as $obj)
									{
										if ($obj->html_type == $woof_settings['tax_type'][$tax_slug])
										{
											$is_custom = true;
											$args['woof_settings'] = $woof_settings;
											$args['taxonomies_info'] = $taxonomies_info;
											echo wp_kses($WOOF->render_html($obj->get_html_type_view(), $args), $allowed_html);
											break;
										}
									}


									if (!$is_custom)
									{
										if (file_exists(get_template_directory() . '/views/html_types/radio.php')) {
											echo wp_kses($WOOF->render_html(get_template_directory() . '/views/html_types/radio.php', $args), $allowed_html);
										} else {
											echo wp_kses($WOOF->render_html(WOOF_PATH . 'views/html_types/radio.php', $args), $allowed_html);
										}
									}
								}
								else
								{
									if (file_exists(get_template_directory() . '/views/html_types/radio.php')) {
										echo wp_kses($WOOF->render_html(get_template_directory() . '/views/html_types/radio.php', $args), $allowed_html);
									} else {
										echo wp_kses($WOOF->render_html(WOOF_PATH . 'views/html_types/radio.php', $args), $allowed_html);
									}
								}
								?>

							</div>
							<?php
							break;
					}
					?>

				</div>
			</div>
			<?php
		}
	}

endif;
