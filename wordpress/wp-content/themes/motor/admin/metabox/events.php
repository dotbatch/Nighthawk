<?php
return array(
	'id' => 'motor_meta_events',
	'types' => array('events'),
	'title' => esc_html__('Date', 'motor'),
	'priority' => 'high',
	'template' => array(
		array(
			'type' => 'date',
			'label' => esc_html__('Date', 'motor'),
			'format' => 'yy-mm-dd',
			'name' => 'events_date',
		),
	),
);
?>