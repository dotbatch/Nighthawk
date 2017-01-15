<?php
// add the font | Main Title
$mainttl_font_face = (!empty($motor_options['mainttl_font_face'])) ? $motor_options['mainttl_font_face'] : '';
$mainttl_font_weight = (!empty($motor_options['mainttl_font_weight'])) ? $motor_options['mainttl_font_weight'] : '';
$mainttl_font_style  = (!empty($motor_options['mainttl_font_style'])) ? $motor_options['mainttl_font_style'] : '';
$mainttl_font_subset  = (!empty($motor_options['mainttl_font_subset'])) ? $motor_options['mainttl_font_subset'] : '';
$mainttl_font_size  = (!empty($motor_options['mainttl_font_size'])) ? $motor_options['mainttl_font_size'] : '';
if (class_exists('VP_Metabox')) {
	VP_Site_GoogleWebFont::instance()->add($mainttl_font_face, $mainttl_font_weight, $mainttl_font_style, $mainttl_font_subset);
}

// add the font | Normal Title
$normalttl_font_face = (!empty($motor_options['normalttl_font_face'])) ? $motor_options['normalttl_font_face'] : '';
$normalttl_font_weight = (!empty($motor_options['normalttl_font_weight'])) ? $motor_options['normalttl_font_weight'] : '';
$normalttl_font_style  = (!empty($motor_options['normalttl_font_style'])) ? $motor_options['normalttl_font_style'] : '';
$normalttl_font_subset  = (!empty($motor_options['normalttl_font_subset'])) ? $motor_options['normalttl_font_subset'] : '';
if (class_exists('VP_Metabox')) {
	VP_Site_GoogleWebFont::instance()->add($normalttl_font_face, $normalttl_font_weight, $normalttl_font_style, $normalttl_font_subset);
}

// add the font | Text
$text_font_face = (!empty($motor_options['text_font_face'])) ? $motor_options['text_font_face'] : '';
$text_font_weight = (!empty($motor_options['text_font_weight'])) ? $motor_options['text_font_weight'] : '';
$text_font_style  = (!empty($motor_options['text_font_style'])) ? $motor_options['text_font_style'] : '';
$text_font_subset  = (!empty($motor_options['text_font_subset'])) ? $motor_options['text_font_subset'] : '';
if (class_exists('VP_Metabox')) {
	VP_Site_GoogleWebFont::instance()->add($text_font_face, $text_font_weight, $text_font_style, $text_font_subset);
}

// embed font function
if (class_exists('VP_Metabox')) {
	function motor_embed_fonts()
	{
		// you can directly enqueue and register
		VP_Site_GoogleWebFont::instance()->register_and_enqueue();
		// or register and get the handler to be used as dependency
		VP_Site_GoogleWebFont::instance()->register();
		//wp_register_style('motor_fonts', get_template_directory_uri().'/css/fonts.css', VP_Site_GoogleWebFont::instance()->get_names());
		//wp_enqueue_style('motor_fonts');
	}
	add_action('wp_enqueue_scripts', 'motor_embed_fonts');
}

// Main Title	
if (!empty($mainttl_font_face)) {
	add_less_var( 'mainttl_font_face', "'".$mainttl_font_face."'" );
} else {
	add_less_var( 'mainttl_font_face', 'MontserratBlack' );
}
if (!empty($mainttl_font_weight)) {
	add_less_var( 'mainttl_font_weight', $mainttl_font_weight );
} else {
	add_less_var( 'mainttl_font_weight', 900 );
}
if (!empty($mainttl_font_size)) {
	add_less_var( 'mainttl_font_size', $mainttl_font_size.'px' );
} else {
	add_less_var( 'mainttl_font_size', '30px' );
}

// Normal Title
if (!empty($normalttl_font_face)) {
	add_less_var( 'normalttl_font_face', "'".$normalttl_font_face."'" );
} else {
	add_less_var( 'normalttl_font_face', 'Montserrat' );
}
if (!empty($normalttl_font_weight)) {
	add_less_var( 'normalttl_font_weight', $normalttl_font_weight );
} else {
	add_less_var( 'normalttl_font_weight', 700 );
}

// Text
if (!empty($text_font_face)) {
	add_less_var( 'text_font_face', "'".$text_font_face."'" );
} else {
	add_less_var( 'text_font_face', 'Open Sans' );
}
if (!empty($text_font_weight)) {
	add_less_var( 'text_font_weight', $text_font_weight );
} else {
	add_less_var( 'text_font_weight', 400 );
}

// Primary Color
(!empty($motor_options['color_primary'])) ? $color_primary = $motor_options['color_primary'] : $color_primary = '#ff3100';
add_less_var( 'color_primary', $color_primary );

// Body Background
(!empty($motor_options['color_body'])) ? $color_body = $motor_options['color_body'] : $color_body = '#f4f5fb';
add_less_var( 'color_body', $color_body );

// Header Background Color
(!empty($motor_options['color_header'])) ? $color_header = $motor_options['color_header'] : $color_header = '#18202e';
add_less_var( 'color_header', $color_header );

// Footer Background Color
(!empty($motor_options['color_footer'])) ? $color_footer = $motor_options['color_footer'] : $color_footer = '#18202e';
add_less_var( 'color_footer', $color_footer );

// Copyright Background Color
(!empty($motor_options['color_copyright'])) ? $color_copyright = $motor_options['color_copyright'] : $color_copyright = '#18202e';
add_less_var( 'color_copyright', $color_copyright );

?>