<?php
/**
 * Product Loop Start
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/loop-start.php.
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

global $motor_options;

if (isset($_SESSION['view_mode']) && $_SESSION['view_mode'] == 'gallery')
	$view_mode = $_SESSION['view_mode'];
else
	$view_mode = $motor_options['motor_catalog_mode'];
?>
<?php if ($view_mode == 'gallery') : ?>
	<!-- Catalog Items (Gallery) - start -->
	<div class="prod-items section-gallery">
<?php else: ?>
	<!-- Catalog Items (List) - start -->
	<div class="prod-litems section-list">
<?php endif; ?>