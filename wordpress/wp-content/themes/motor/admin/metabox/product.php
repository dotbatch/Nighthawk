<?php
return array(
	'id' => 'motor_meta_product',
	'types' => array('product'),
	'title' => esc_html__('Product Fields', 'motor'),
	'priority' => 'high',
	'template' => array(
		array(
			'type' => 'wpeditor',
			'label' => esc_html__('Product Description', 'motor'),
			'name' => 'product_description',
		),
		array(
			'type' => 'textbox',
			'label' => esc_html__('Shipping', 'motor'),
			'name' => 'product_shipping',
		),
	),
);
?>