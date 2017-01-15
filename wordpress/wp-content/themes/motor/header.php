<?php
global $motor_options;
?><!doctype html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php if (!empty($motor_options['motor_favicon'])) : ?>
<link rel="shortcut icon" href="<?php echo esc_attr($motor_options['motor_favicon']); ?>" type="image/x-icon">
<link rel="icon" href="<?php echo esc_attr($motor_options['motor_favicon']); ?>" type="image/x-icon">
<?php endif; ?>
	
<?php wp_head(); ?>
</head>
<body <?php
$sticky_header = '';
if (!empty($motor_options['motor_header_sticky']) && $motor_options['motor_header_sticky']) {
	$sticky_header = 'header-sticky';
}
body_class($sticky_header);
?>>

<div id="page" class="site">

<?php if (!empty($motor_options['motor_header_topbar']) && $motor_options['motor_header_topbar']) : ?>
<!-- TopBar - start -->
<div class="topbar">
	<?php
	if (
		!empty($motor_options['motor_header_address_ttl']) ||
		!empty($motor_options['motor_header_address']) ||
		!empty($motor_options['motor_header_contacts_ttl']) ||
		!empty($motor_options['motor_header_contacts']) ||
		!empty($motor_options['motor_header_phone_ttl']) ||
		!empty($motor_options['motor_header_phone'])
	) :
	?>
	<ul class="topbar-address">
		<?php if (!empty($motor_options['motor_header_address_ttl']) || !empty($motor_options['motor_header_address'])) : ?>
		<li>
			<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/ico1.png" alt="">
			<p>
			<?php if (!empty($motor_options['motor_header_address_ttl'])) : ?><span><?php echo esc_attr($motor_options['motor_header_address_ttl']); ?></span><?php endif; ?> <?php if (!empty($motor_options['motor_header_address'])) echo esc_attr($motor_options['motor_header_address']); ?>
			</p>
		</li>
		<?php endif; ?>
		<?php if (!empty($motor_options['motor_header_contacts_ttl']) || !empty($motor_options['motor_header_contacts'])) : ?>
		<li>
			<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/ico2.png" alt="">
			<p>
				<?php if (!empty($motor_options['motor_header_contacts_ttl'])) : ?><span><?php echo esc_attr($motor_options['motor_header_contacts_ttl']); ?></span><?php endif; ?> <?php if (!empty($motor_options['motor_header_contacts'])) echo esc_attr($motor_options['motor_header_contacts']); ?>
			</p>
		</li>
		<?php endif; ?>
		<?php if (!empty($motor_options['motor_header_phone_ttl']) || !empty($motor_options['motor_header_phone'])) : ?>
		<li>
			<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/ico3.png" alt="">
			<p>
				<?php if (!empty($motor_options['motor_header_phone_ttl'])) : ?><span><?php echo esc_attr($motor_options['motor_header_phone_ttl']); ?></span><?php endif; ?> <?php if (!empty($motor_options['motor_header_phone'])) echo esc_attr($motor_options['motor_header_phone']); ?>
			</p>
		</li>
		<?php endif; ?>
	</ul>
	<?php endif; ?>
	<ul class="topbar-social">
		<?php for ($i = 1; $i <= 10; $i++) : ?>
			<?php if (!empty($motor_options['motor_footer_link_'.$i]) && !empty($motor_options['motor_footer_icon_'.$i])) : ?>
				<li>
					<a rel="nofollow" target="_blank" href="<?php echo esc_url($motor_options['motor_footer_link_'.$i]); ?>">
						<?php echo wp_kses_post($motor_options['motor_footer_icon_'.$i]); ?>
					</a>
				</li>
			<?php endif; ?>
		<?php endfor; ?>
	</ul>
</div>
<!-- TopBar - end -->
<?php endif; ?>

<!-- Header - start -->
<div id="masthead" class="header">

	<!-- Navmenu Mobile Toggle Button -->
	<a href="#" class="header-menutoggle" id="header-menutoggle"><?php echo esc_html__('Menu', 'motor'); ?></a>

	<div class="header-info">

		<?php if ( class_exists( 'WooCommerce' ) ) : ?>

		<!-- Personal Menu -->
		<div class="header-personal">
			<?php if (is_user_logged_in()) : ?>
			<a class="header-gopersonal" href="<?php echo get_permalink( get_option('woocommerce_myaccount_page_id') ); ?>"></a>
			<ul>
				<?php if (!empty($motor_options['compare']['id'])) : ?>
				<li>
					<a href="<?php echo ($motor_options['compare']['id']) ? get_permalink($motor_options['compare']['id']) : ''; ?>"><?php echo esc_html__('Compare list', 'motor'); ?> <span><?php echo count($motor_options['compare']['list'])?></span></a>
				</li>
				<?php endif; ?>
				<?php if (!empty($motor_options['wishlist']['id'])) : ?>
				<li>
					<a href="<?php echo ($motor_options['wishlist']['id']) ? get_permalink($motor_options['wishlist']['id']) : ''; ?>"><?php echo esc_html__('Wishlist', 'motor'); ?> <span><?php echo esc_attr($motor_options['wishlist']['count']); ?></span></a>
				</li>
				<?php endif; ?>
				<li class="header-personal-cart">
					<a href="<?php echo esc_url(WC()->cart->get_cart_url()); ?>"><?php echo esc_html__('Shopping Cart', 'motor'); ?> <span><?php echo WC()->cart->get_cart_contents_count()?></span></a>
				</li>
				<li class="header-order">
					<a href="<?php echo esc_url(WC()->cart->get_checkout_url()); ?>"><?php echo esc_html__('Checkout', 'motor'); ?></a>
				</li>
				<li>
					<a href="<?php echo get_permalink( get_option('woocommerce_myaccount_page_id') ); ?>"><?php echo esc_html__('My Account', 'motor'); ?></a>
				</li>
				<li>
					<a href="<?php echo esc_url(wc_customer_edit_account_url()); ?>"><?php echo esc_html__('Settings', 'motor'); ?></a>
				</li>
				<li>
					<a href="<?php echo esc_url( wc_get_endpoint_url( 'customer-logout', '', wc_get_page_permalink( 'myaccount' ) ) ); ?>"><?php echo esc_html__('Log out', 'motor'); ?></a>
				</li>
			</ul>
			<?php else : ?>
			<a class="header-gopersonal" href="<?php echo get_permalink( get_option('woocommerce_myaccount_page_id') ); ?>"></a>
			<ul>
				<li>
					<a href="<?php echo get_permalink( get_option('woocommerce_myaccount_page_id') ); ?>"><?php esc_html_e('Login / Register','motor'); ?></a>
				</li>
			</ul>
			<?php endif; ?>
		</div>

		<!-- Small Cart -->
		<a href="<?php echo esc_url(WC()->cart->get_cart_url()); ?>" class="header-cart">
			<div class="header-cart-inner">
				<p class="header-cart-count">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/img/cart.png" alt="">
					<span><?php echo WC()->cart->get_cart_contents_count()?></span>
				</p>
				<p class="header-cart-summ"><?php echo WC()->cart->get_cart_total(); ?></p>
			</div>
		</a>
		
		<?php endif; ?>

		<?php if (!empty($motor_options['compare']['id'])) : ?>
		<a href="<?php echo (!empty($motor_options['compare']['id'])) ? get_permalink($motor_options['compare']['id']) : ''; ?>" class="header-compare"><?php if (count($motor_options['compare']['list'])) : ?><span><?php echo count($motor_options['compare']['list'])?></span><?php endif; ?></a>
		<?php endif; ?>
		<?php if (!empty($motor_options['wishlist']['id'])) : ?>
		<a href="<?php echo (!empty($motor_options['wishlist']['id'])) ? get_permalink($motor_options['wishlist']['id']) : ''; ?>" class="header-favorites"><?php if (!empty($motor_options['wishlist']['count'])) : ?><span><?php echo esc_attr($motor_options['wishlist']['count']); ?></span><?php endif; ?></a>
		<?php endif; ?>

		<!-- Search Form -->
		<a href="#" class="header-searchbtn" id="header-searchbtn"></a>
		<?php get_search_form(); ?>

	</div>

	<!-- Logotype -->
	<?php if ($motor_options['motor_header_logo']) : ?>
	<p class="header-logo">
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo esc_attr($motor_options['motor_header_logo']); ?>" alt="<?php bloginfo('sitename'); ?>"></a>
	</p>
	<?php endif; ?>

	<!-- Navmenu - start -->
	<?php
	wp_nav_menu( array(
		'theme_location' => 'rw-top-menu',
		'container' => 'nav',
		'container_class' => '',
		'container_id' => 'top-menu',
		'items_wrap' => '<ul>%3$s</ul>',
	) );
	?>
	<!-- Navmenu - end -->

</div>
<!-- Header - end -->

<div id="content" class="site-content">