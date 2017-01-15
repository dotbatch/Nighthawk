<?php get_header(); ?>

<?php
$page_width_meta = get_post_meta(get_the_ID(), 'my_meta_box_page');
if (!empty($page_width_meta[0]) && $page_width_meta[0] == 'full') {
	$page_width = 'full';
} else {
	$page_width = 'normal';
}

global $motor_options; ?>

	<div id="primary" class="content-area<?php echo ' width-'.esc_attr($page_width); ?>">
		<main id="main" class="site-main">

			<?php if (!is_front_page()) : ?>
				<!-- Breadcrumbs -->
				<div class="b-crumbs-wrap">
					<?php if ( class_exists( 'WooCommerce' ) ) : ?>
						<div class="cont b-crumbs">
							<?php woocommerce_breadcrumb(array('wrap_before'=>'<ul>', 'wrap_after'=>'</ul>', 'before'=>'<li>', 'after'=>'</li>', 'delimiter'=>'')); ?>
						</div>
					<?php endif; ?>
				</div>
			<?php endif; ?>

			<?php if (class_exists( 'WooCommerce' ) && is_cart()) : ?>

				<?php
				if (have_posts()) :
					while (have_posts()) : the_post();
						?>

						<?php the_content(); ?>

						<?php
					endwhile;
				endif;
				?>

			<?php elseif ($page_width == 'full') : ?>

				<div id="post-<?php the_ID(); ?>" class="maincont page-styling page-full">
					<?php
					if (have_posts()) :
						while (have_posts()) : the_post();
							?>
							<?php the_content(); ?>
							<?php
						endwhile;

						if ( comments_open() || get_comments_number() ) {
							comments_template();
						}

					endif;
					?>
				</div>

			<?php else: ?>


				<div class="cont maincont">
					<?php
					if (have_posts()) :
						while (have_posts()) : the_post();
							?>
							<h1><span><?php the_title(); ?></span></h1>
							<span class="maincont-line1"></span>
							<span class="maincont-line2"></span>

							<?php if ((class_exists( 'YITH_WCWL' ) && yith_wcwl_is_wishlist_page()) || (class_exists( 'WooCommerce' ) && is_checkout())) : ?>

								<?php get_template_part('template-parts/personal-menu'); ?>

								<div class="page-styling">
									<?php
									the_content();
									?>
								</div>

								<?php
								wp_link_pages( array(
									'before'           => '<p class="link-pages">',
									'after'            => '</p>',
									'link_before'      => '<span>',
									'link_after'       => '</span>',
									'nextpagelink'     => '<i class="fa fa-angle-right"></i>',
									'previouspagelink' => '<i class="fa fa-angle-left"></i>',
								) );

								if ( comments_open() || get_comments_number() ) {
									comments_template();
								}
								?>
							<?php else: ?>
								<?php if (isset($motor_options['compare']['id']) && get_the_id() == $motor_options['compare']['id']) : ?>
									<?php get_template_part('template-parts/personal-menu'); ?>
									<p class="section-count"><?php echo count($motor_options['compare']['list'])?> <?php esc_html_e('ITEMS', 'motor'); ?></p>
								<?php endif; ?>
								<article id="post-<?php the_ID(); ?>" <?php post_class("page-cont"); ?>>

									<div class="page-styling">
										<?php
										the_content();
										?>
									</div>

									<?php
									wp_link_pages( array(
										'before'           => '<p class="link-pages">',
										'after'            => '</p>',
										'link_before'      => '<span>',
										'link_after'       => '</span>',
										'nextpagelink'     => '<i class="fa fa-angle-right"></i>',
										'previouspagelink' => '<i class="fa fa-angle-left"></i>',
									) );

									if ( comments_open() || get_comments_number() ) {
										comments_template();
									}
									?>

								</article>
							<?php endif; ?>

							<?php
						endwhile;
					endif;
					?>
				</div>

			<?php endif; ?>



		</main><!-- #main -->
	</div><!-- #primary -->

<?php get_footer(); ?>