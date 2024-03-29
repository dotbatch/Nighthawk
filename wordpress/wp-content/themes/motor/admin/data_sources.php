<?php

VP_Security::instance()->whitelist_function('motor_is_category');

function motor_is_category($value)
{
	if($value === 'category')
		return true;
	return false;
}

VP_Security::instance()->whitelist_function('motor_is_link');

function motor_is_link($value)
{
	if($value === 'custom_link')
		return true;
	return false;
}


VP_Security::instance()->whitelist_function('motor_font_preview');
function motor_font_preview($face, $style, $weight, $size)
{
	$gwf   = new VP_Site_GoogleWebFont();
	$gwf->add($face, $style, $weight);
	$links = $gwf->get_font_links();
	$link  = reset($links);
	$dom   = <<<EOD
<link href='$link' rel='stylesheet' type='text/css'>
<p style="padding: 0 10px 0 10px; font-family: $face; font-style: $style; font-weight: $weight; font-size: {$size}px;">
	Grumpy wizards make toxic brew for the evil Queen and Jack
</p>
EOD;
	return $dom;
}


VP_Security::instance()->whitelist_function('motor_font_preview2');
function motor_font_preview2($face, $style, $weight)
{
	$gwf   = new VP_Site_GoogleWebFont();
	$gwf->add($face, $style, $weight);
	$links = $gwf->get_font_links();
	$link  = reset($links);
	$dom   = <<<EOD
<link href='$link' rel='stylesheet' type='text/css'>
<p style="padding: 0 10px 0 10px; font-family: $face; font-style: $style; font-weight: $weight;">
	Grumpy wizards make toxic brew for the evil Queen and Jack
</p>
EOD;
	return $dom;
}