<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.0.0
 */


if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $motor_options;
global $wp_query;
global $wp;

$current_url = esc_url(home_url(add_query_arg(array(),$wp->request)));
if (isset($_SESSION['view_mode']) && $_SESSION['view_mode'] == 'gallery')
	$view_mode = $_SESSION['view_mode'];
else
	$view_mode = $motor_options['motor_catalog_mode'];

get_header( 'shop' ); ?>

<!-- Breadcrumbs -->
<div class="b-crumbs-wrap">
	<?php if ( class_exists( 'WooCommerce' ) ) : ?>
	<div class="cont b-crumbs">
		<?php woocommerce_breadcrumb(array('wrap_before'=>'<ul>', 'wrap_after'=>'</ul>', 'before'=>'<li>', 'after'=>'</li>', 'delimiter'=>'')); ?>
	</div>
	<?php endif; ?>
</div>

<div class="cont maincont">

<?php
/**
 * woocommerce_before_main_content hook.
 */
do_action( 'woocommerce_before_main_content' );
?>
<?php if ( apply_filters( 'woocommerce_show_page_title', true ) ) : ?>
<h1><span><?php woocommerce_page_title(); ?></span></h1>
<span class="maincont-line1"></span>
<span class="maincont-line2<?php if ($wp_query->max_num_pages > 1) echo ' maincont-line2-pagi'; ?>"></span>
<?php endif; ?>

<?php $categories_lev_1 = get_categories('taxonomy=product_cat&parent=0'); ?>
<!-- Catalog Sections -->
<?php if (!empty($categories_lev_1)) : ?>
<?php
$queried_term_id = (isset(get_queried_object()->term_id)) ? get_queried_object()->term_id : '';
$queried_product_cat = (isset($wp_query->query['product_cat'])) ? $wp_query->query['product_cat'] : '';
?>
<ul class="cont-sections">
	<li<?php if (!$queried_term_id) echo ' class="active"'; ?>>
		<a href="<?php echo get_permalink( woocommerce_get_page_id( 'shop' ) )?>"><?php echo esc_html__('All', 'motor'); ?></a>
	</li>
	<?php foreach ($categories_lev_1 as $categ) : ?>
	<li<?php if ($queried_term_id == $categ->term_id || stristr($queried_product_cat, $categ->slug.'/')) echo ' class="active"'; ?>>
		<a href="<?php echo get_category_link( $categ->term_id )?>"><?php echo esc_attr($categ->name); ?></a>
	</li>
	<?php endforeach; ?>
	<li class="cont-sections-more"><span><?php esc_html_e('...', 'motor'); ?></span><ul class="cont-sections-sub"></ul></li>
</ul>
<?php endif; ?>
	
<p class="section-count"><?php echo intval($wp_query->found_posts); ?> <?php echo esc_html__('ITEMS', 'motor'); ?></p>

<?php
/**
 * woocommerce_archive_description hook.
 *
 * @hooked woocommerce_taxonomy_archive_description - 10
 * @hooked woocommerce_product_archive_description - 10
 */
do_action( 'woocommerce_archive_description' );
?>

<!-- Catalog Filter - start -->
<div class="section-top">
	<a href="#" class="section-menu-btn" id="section-menu-btn"><?php echo esc_html__('Catalog', 'motor')?></a>
	<div class="section-view">
		<p><?php echo esc_html__('View', 'motor')?></p>
		<div class="dropdown-wrap">
			<p class="dropdown-title section-view-ttl">
			<?php
			if ($view_mode == 'gallery')
				echo "Gallery";
			else
				echo "List";
			?>
			</p>
			<ul class="dropdown-list">
				<li<?php if ($view_mode == 'list') echo ' class="active"'; ?>>
					<a href="<?php echo esc_url($current_url.'?view_mode=list'); ?>"><?php echo esc_html__('List', 'motor')?></a>
				</li>
				<li<?php if ($view_mode == 'gallery') echo ' class="active"'; ?>>
					<a href="<?php echo esc_url($current_url.'?view_mode=gallery'); ?>"><?php echo esc_html__('Gallery', 'motor')?></a>
				</li>
			</ul>
		</div>
	</div>
	<?php
	woocommerce_catalog_ordering();
	?>

	<div class="section-menu-wrap" id="section-menu-wrap">
		<?php motor_hierarchical_category_tree( 0 ); ?>
	</div>

</div>
<!-- Catalog Filter - end -->



<?php if ( have_posts() ) : ?>

	<p class="section-filter-toggle<?php if (!empty($_COOKIE['filter_toggle']) && $_COOKIE['filter_toggle'] == 'filter_hidden') echo ' filter_hidden'; ?>">
		<a href="#" id="section-filter-toggle-btn"><?php if (!empty($_COOKIE['filter_toggle']) && $_COOKIE['filter_toggle'] == 'filter_hidden') esc_html_e('Show Filter', 'motor'); else esc_html_e('Hide Filter', 'motor'); ?></a>
	</p>
	<div class="section-filter" id="section-filter">
	<?php
	/**
	 * woocommerce_before_shop_loop hook.
	 *
	 * @hooked woocommerce_result_count - 20
	 * @hooked woocommerce_catalog_ordering - 30
	 */
	do_action( 'woocommerce_before_shop_loop' );
	?>
	</div>

	<?php woocommerce_product_loop_start(); ?>

	<?php while ( have_posts() ) : the_post(); ?>

		<?php wc_get_template_part( 'content', 'product' ); ?>

	<?php endwhile; // end of the loop. ?>


	<?php woocommerce_product_loop_end(); ?>

	<?php
	/**
	 * woocommerce_after_shop_loop hook.
	 *
	 * @hooked woocommerce_pagination - 10
	 */
	do_action( 'woocommerce_after_shop_loop' );
	?>

<?php elseif ( ! woocommerce_product_subcategories( array( 'before' => woocommerce_product_loop_start( false ), 'after' => woocommerce_product_loop_end( false ) ) ) ) : ?>

	<?php wc_get_template( 'loop/no-products-found.php' ); ?>

<?php endif; ?>


<?php
/**
 * woocommerce_after_main_content hook.
 */
do_action( 'woocommerce_after_main_content' );
?>

</div>

<?php
/**
 * woocommerce_sidebar hook.
 *
 * @hooked woocommerce_get_sidebar - 10
 */
//do_action( 'woocommerce_sidebar' );
?>

<?php get_footer( 'shop' ); ?>
