<?php

return array(

	////////////////////////////////////////
	// Localized JS Message Configuration //
	////////////////////////////////////////

	/**
	 * Validation Messages
	 */
	'validation' => array(
		'alphabet'     => __('Value needs to be Alphabet', 'motor'),
		'alphanumeric' => __('Value needs to be Alphanumeric', 'motor'),
		'numeric'      => __('Value needs to be Numeric', 'motor'),
		'email'        => __('Value needs to be Valid Email', 'motor'),
		'url'          => __('Value needs to be Valid URL', 'motor'),
		'maxlength'    => __('Length needs to be less than {0} characters', 'motor'),
		'minlength'    => __('Length needs to be more than {0} characters', 'motor'),
		'maxselected'  => __('Select no more than {0} items', 'motor'),
		'minselected'  => __('Select at least {0} items', 'motor'),
		'required'     => __('This is required', 'motor'),
	),

	/**
	 * Import / Export Messages
	 */
	'util' => array(
		'import_success'    => __('Import succeed, option page will be refreshed..', 'motor'),
		'import_failed'     => __('Import failed', 'motor'),
		'export_success'    => __('Export succeed, copy the JSON formatted options', 'motor'),
		'export_failed'     => __('Export failed', 'motor'),
		'restore_success'   => __('Restoration succeed, option page will be refreshed..', 'motor'),
		'restore_nochanges' => __('Options identical to default', 'motor'),
		'restore_failed'    => __('Restoration failed', 'motor'),
	),

	/**
	 * Control Fields String
	 */
	'control' => array(
		// select2 select box
		'select2_placeholder' => __('Select option(s)', 'motor'),
		// fontawesome chooser
		'fac_placeholder'     => __('Select an Icon', 'motor'),
	),

);

/**
 * EOF
 */