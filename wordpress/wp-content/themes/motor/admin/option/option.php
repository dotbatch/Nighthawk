<?php

return array(
	'title' => esc_html__('Motor Options Panel', 'motor'),
	'logo' => '',
	'menus' => array(
		array(
			'title' => esc_html__('Header', 'motor'),
			'name' => 'motor_header',
			'icon' => 'font-awesome:fa-cogs',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => esc_html__('Header', 'motor'),
					'fields' => array(
						array(
							'type' => 'upload',
							'name' => 'motor_header_logo',
							'label' => esc_html__('Logotype', 'motor'),
							'default' => get_template_directory_uri().'/img/logo.png',
						),
						array(
							'type' => 'toggle',
							'name' => 'motor_header_sticky',
							'label' => esc_html__('Sticky Header', 'motor'),
							'default' => '0',
						),
						array(
							'type' => 'toggle',
							'name' => 'motor_header_topbar',
							'label' => esc_html__('Show Topbar', 'motor'),
							'default' => '0',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_header_address_ttl',
							'label' => esc_html__('Address Title', 'motor'),
							'description' => '',
							'default' => '',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_header_address',
							'label' => esc_html__('Address', 'motor'),
							'description' => '',
							'default' => '',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_header_contacts_ttl',
							'label' => esc_html__('Contacts Title', 'motor'),
							'description' => '',
							'default' => '',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_header_contacts',
							'label' => esc_html__('Contacts', 'motor'),
							'description' => '',
							'default' => '',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_header_phone_ttl',
							'label' => esc_html__('Phone Title', 'motor'),
							'description' => '',
							'default' => '',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_header_phone',
							'label' => esc_html__('Phone', 'motor'),
							'description' => '',
							'default' => '',
						),
					),
				),
			),
		),
		array(
			'title' => esc_html__('Footer', 'motor'),
			'name' => 'motor_footer',
			'icon' => 'font-awesome:fa-th-large',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => esc_html__('Copyright', 'motor'),
					'fields' => array(
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_copyright',
							'label' => esc_html__('Copyright', 'motor'),
							'description' => '',
							'default' => '&copy; 2016 Stockware All Right Received',
						),
					),
				),
				array(
					'type' => 'section',
					'title' => esc_html__('Footer Forms', 'motor'),
					'fields' => array(
						array(
							'type' => 'textarea',
							'name' => 'motor_footer_form_1',
							'label' => esc_html__('Subscribe Form', 'motor'),
							'description' => 'Enter the shortcode of the form, that generated from the plugin "Contact Form 7"',
						),
						array(
							'type' => 'textarea',
							'name' => 'motor_footer_form_2',
							'label' => esc_html__('Modal Form', 'motor'),
							'description' => 'Enter the shortcode of the form, that generated from the plugin "Contact Form 7"',
						),
					),
				),
				array(
					'type'      => 'section',
					'title'     => esc_html__('Social Links', 'motor'),
					'fields'    => array(
						array(
							'type' => 'notebox',
							'name' => 'motor_footer_nb',
							'label' => esc_html__('Social Links', 'motor'),
							'description' => esc_html__('Social Links (with http:// protocol) <br>Icons "Font Awesome Icon - https://fortawesome.github.io/Font-Awesome/icons/ (f. e. &lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;/i&gt;)"', 'motor'),
							'status' => 'normal',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_1',
							'label' => 'Link 1',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_1',
							'label' => 'Icon 1',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_2',
							'label' => 'Link 2',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_2',
							'label' => 'Icon 2',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_3',
							'label' => 'Link 3',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_3',
							'label' => 'Icon 3',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_4',
							'label' => 'Link 4',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_4',
							'label' => 'Icon 4',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_5',
							'label' => 'Link 5',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_5',
							'label' => 'Icon 5',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_6',
							'label' => 'Link 6',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_6',
							'label' => 'Icon 6',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_7',
							'label' => 'Link 7',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_7',
							'label' => 'Icon 7',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_8',
							'label' => 'Link 8',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_8',
							'label' => 'Icon 8',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_9',
							'label' => 'Link 9',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_9',
							'label' => 'Icon 9',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_link_10',
							'label' => 'Link 10',
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_footer_icon_10',
							'label' => 'Icon 10',
						),
					),
				),
			),
		),
		array(
			'title' => esc_html__('Catalog', 'motor'),
			'name' => 'motor_catalog',
			'icon' => 'font-awesome:fa-list',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => esc_html__('Catalog', 'motor'),
					'fields' => array(
						array(
							'type' => 'textbox',
							'name' => 'motor_catalog_pagi',
							'label' => esc_html__('Number of products', 'motor'),
							'default' => '12',
							'validation' => 'numeric',
						),
						array(
							'type' => 'select',
							'name' => 'motor_catalog_mode',
							'label' => esc_html__('Default Catalog Mode', 'motor'),
							'items' => array(
								array(
									'value' => 'list',
									'label' => esc_html__('List', 'motor'),
								),
								array(
									'value' => 'gallery',
									'label' => esc_html__('Gallery', 'motor'),
								),
							),
							'default' => array(
								'list'
							),
						),
					),
				),
			),
		),
		array(
			'title' => esc_html__('Blog', 'motor'),
			'name' => 'motor_blog',
			'icon' => 'font-awesome:fa-file-text',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => esc_html__('Sidebar Position', 'motor'),
					'fields' => array(
						array(
							'type' => 'select',
							'name' => 'motor_blog_sidebar',
							'label' => esc_html__('Blog Sidebar Position', 'motor'),
							'items' => array(
								array(
									'value' => 'right',
									'label' => esc_html__('Right', 'motor'),
								),
								array(
									'value' => 'left',
									'label' => esc_html__('Left', 'motor'),
								),
								array(
									'value' => 'full',
									'label' => esc_html__('Without Sidebar', 'motor'),
								),
							),
							'default' => array(
								'right'
							),
						),
						array(
							'type' => 'select',
							'name' => 'motor_post_sidebar',
							'label' => esc_html__('Single Post Sidebar Position', 'motor'),
							'items' => array(
								array(
									'value' => 'right',
									'label' => esc_html__('Right', 'motor'),
								),
								array(
									'value' => 'left',
									'label' => esc_html__('Left', 'motor'),
								),
								array(
									'value' => 'full',
									'label' => esc_html__('Without Sidebar', 'motor'),
								),
							),
							'default' => array(
								'full'
							),
						),
					),
				),
			),
		),
		array(
			'title' => esc_html__('Cart', 'motor'),
			'name' => 'motor_cart',
			'icon' => 'font-awesome:fa-shopping-cart',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => esc_html__('Cart Template', 'motor'),
					'fields' => array(
						array(
							'type' => 'select',
							'name' => 'motor_cart_template',
							'label' => esc_html__('Cart Template', 'motor'),
							'items' => array(
								array(
									'value' => 'modern',
									'label' => esc_html__('Modern', 'motor'),
								),
								array(
									'value' => 'classic',
									'label' => esc_html__('Classic', 'motor'),
								),
							),
							'default' => array(
								'modern'
							),
						),
					),
				),
			),
		),
		array(
			'title' => esc_html__('Styling', 'motor'),
			'name' => 'motor_styling',
			'icon' => 'font-awesome:fa-magic',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => esc_html__('Styling', 'motor'),
					'fields' => array(
						array(
							'type' => 'color',
							'name' => 'color_primary',
							'label' => esc_html__('Primary Color', 'motor'),
							'description' => 'Default Color - #ff3100',
							'format' => 'HEX',
							'default' => '#ff3100',
						),
						array(
							'type' => 'color',
							'name' => 'color_body',
							'label' => esc_html__('Body Background', 'motor'),
							'description' => 'Default Color - #f4f5fb',
							'format' => 'HEX',
							'default' => '#f4f5fb',
						),
						array(
							'type' => 'color',
							'name' => 'color_header',
							'label' => esc_html__('Header Background Color', 'motor'),
							'description' => 'Default Color - #18202e',
							'format' => 'HEX',
							'default' => '#18202e',
						),
						array(
							'type' => 'color',
							'name' => 'color_footer',
							'label' => esc_html__('Footer Background Color', 'motor'),
							'description' => 'Default Color - #18202e',
							'format' => 'HEX',
							'default' => '#18202e',
						),
						array(
							'type' => 'color',
							'name' => 'color_copyright',
							'label' => esc_html__('Copyright Background Color', 'motor'),
							'description' => 'Default Color - #1a2332',
							'format' => 'HEX',
							'default' => '#1a2332',
						),
					),
				),
			),
		),
		array(
			'title' => esc_html__('Others', 'motor'),
			'name' => 'motor_other',
			'icon' => 'font-awesome:fa-cog',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => esc_html__('Others', 'motor'),
					'fields' => array(
						array(
							'type' => 'checkbox',
							'name' => 'motor_other_share',
							'label' => esc_html__('Share', 'motor'),
							'items' => array(
								array(
									'value' => 'facebook',
									'label' => esc_html__('Facebook', 'motor'),
								),
								array(
									'value' => 'twitter',
									'label' => esc_html__('Twitter', 'motor'),
								),
								array(
									'value' => 'vk',
									'label' => esc_html__('VK.com', 'motor'),
								),
								array(
									'value' => 'pinterest',
									'label' => esc_html__('Pinterest', 'motor'),
								),
								array(
									'value' => 'gplus',
									'label' => esc_html__('Google Plus', 'motor'),
								),
								array(
									'value' => 'linkedin',
									'label' => esc_html__('Linkedin', 'motor'),
								),
								array(
									'value' => 'tumblr',
									'label' => esc_html__('Tumblr', 'motor'),
								),
							),
							'default' => array(
								'facebook',
								'twitter',
								'vk',
								'pinterest',
								'gplus',
								'linkedin',
								'tumbrl',
							),
						),
						array(
							'type' => 'textbox',
							'name' => 'motor_gmaps_api',
							'label' => esc_html__('Google Maps API', 'motor'),
							'default' => 'AIzaSyDLAE1-h0khmfa8uytDfDEpUG2uiMK-Lls',
						),
						array(
							'type' => 'upload',
							'name' => 'motor_favicon',
							'label' => esc_html__('Favicon', 'motor'),
							'default' => get_template_directory_uri().'/img/favicon.ico',
						),
					),
				),
			),
		),


		array(
			'title' => __('Typography', 'motor'),
			'name' => 'motor_typography',
			'icon' => 'font-awesome:fa-font',
			'controls' => array(
				array(
					'type' => 'section',
					'title' => __('Typography Main Title', 'motor'),
					'fields' => array(
						array(
							'type' => 'html',
							'name' => 'mainttl_font_preview',
							'binding' => array(
								'field'    => 'mainttl_font_face,mainttl_font_style,mainttl_font_weight,mainttl_font_size',
								'function' => 'motor_font_preview',
							),
						),
						array(
							'type' => 'select',
							'name' => 'mainttl_font_face',
							'label' => __('Main title Font Face', 'motor'),
							'description' => __('click "x" to return the default', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'function',
										'value' => 'vp_get_gwf_family',
									),
								),
							),
						),
						array(
							'type' => 'radiobutton',
							'name' => 'mainttl_font_style',
							'label' => __('Main title Font Style', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'mainttl_font_face',
										'value' => 'vp_get_gwf_style',
									),
								),
							),
							'default' => array(
								'{{first}}',
							),
						),
						array(
							'type' => 'radiobutton',
							'name' => 'mainttl_font_weight',
							'label' => __('Main title Font Weight', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'mainttl_font_face',
										'value' => 'vp_get_gwf_weight',
									),
								),
							),
						),
						array(
							'type' => 'multiselect',
							'name' => 'mainttl_font_subset',
							'label' => __('Main title Font Subset', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'mainttl_font_face',
										'value' => 'vp_get_gwf_subset',
									),
								),
							),
							'default' => 'latin'
						),
						array(
							'type'    => 'slider',
							'name'    => 'mainttl_font_size',
							'label'   => __('Main title Font Size (px)', 'motor'),
							'min'     => '5',
							'max'     => '80',
							'default' => '30',
						),
					),
				),
				array(
					'type' => 'section',
					'title' => __('Typography Normal Title', 'motor'),
					'fields' => array(
						array(
							'type' => 'html',
							'name' => 'normalttl_font_preview',
							'binding' => array(
								'field'    => 'normalttl_font_face,normalttl_font_style,normalttl_font_weight,normalttl_font_size',
								'function' => 'motor_font_preview2',
							),
						),
						array(
							'type' => 'select',
							'name' => 'normalttl_font_face',
							'label' => __('Normal title Font Face', 'motor'),
							'description' => __('click "x" to return the default', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'function',
										'value' => 'vp_get_gwf_family',
									),
								),
							),
						),
						array(
							'type' => 'radiobutton',
							'name' => 'normalttl_font_style',
							'label' => __('Normal title Font Style', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'normalttl_font_face',
										'value' => 'vp_get_gwf_style',
									),
								),
							),
							'default' => array(
								'{{first}}',
							),
						),
						array(
							'type' => 'radiobutton',
							'name' => 'normalttl_font_weight',
							'label' => __('Normal title Font Weight', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'normalttl_font_face',
										'value' => 'vp_get_gwf_weight',
									),
								),
							),
						),
						array(
							'type' => 'multiselect',
							'name' => 'normalttl_font_subset',
							'label' => __('Normal title Font Subset', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'normalttl_font_face',
										'value' => 'vp_get_gwf_subset',
									),
								),
							),
							'default' => 'latin'
						),
					),
				),
				array(
					'type' => 'section',
					'title' => __('Typography Text', 'motor'),
					'fields' => array(
						array(
							'type' => 'html',
							'name' => 'text_font_preview',
							'binding' => array(
								'field'    => 'text_font_face,text_font_style,text_font_weight,text_font_size',
								'function' => 'motor_font_preview2',
							),
						),
						array(
							'type' => 'select',
							'name' => 'text_font_face',
							'label' => __('Text Font Face', 'motor'),
							'description' => __('click "x" to return the default', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'function',
										'value' => 'vp_get_gwf_family',
									),
								),
							),
						),
						array(
							'type' => 'radiobutton',
							'name' => 'text_font_style',
							'label' => __('Text Font Style', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'text_font_face',
										'value' => 'vp_get_gwf_style',
									),
								),
							),
							'default' => array(
								'{{first}}',
							),
						),
						array(
							'type' => 'radiobutton',
							'name' => 'text_font_weight',
							'label' => __('Text Font Weight', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'text_font_face',
										'value' => 'vp_get_gwf_weight',
									),
								),
							),
						),
						array(
							'type' => 'multiselect',
							'name' => 'text_font_subset',
							'label' => __('Text Font Subset', 'motor'),
							'items' => array(
								'data' => array(
									array(
										'source' => 'binding',
										'field' => 'text_font_face',
										'value' => 'vp_get_gwf_subset',
									),
								),
							),
							'default' => 'latin'
						),
					),
				),
			),
		),

	)
);

/**
 *EOF
 */