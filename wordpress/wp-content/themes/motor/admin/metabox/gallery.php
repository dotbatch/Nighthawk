<?php
return array(
	'id' => 'motor_meta_gallery',
	'types' => array('motor_gallery'),
	'title' => esc_html__('Gallery Fields', 'motor'),
	'priority' => 'high',
	'template' => array(
		array(
			'type' => 'textbox',
			'label' => esc_html__('Video Link', 'motor'),
			'description' => esc_html__('If you need modal video, you can paste a video URL from Youtube', 'motor'),
			'name' => 'gallery_video_link',
		),
	),
);
?>