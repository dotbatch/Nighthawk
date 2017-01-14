<?php
/*
    Plugin Name: SEO Redirection Premium
    Plugin URI: http://www.clogica.com/product/seo-redirection-premium-wordpress-plugin
    Description: Manage all your 301 redirects and monitor 404 errors and more ..
    Version: 2.6
    Author: Fakhri Alsadi
    Author URI: http://www.clogica.com
*/
    define('SR_PLUGIN_NAME', 'SEO Redirection Premium');
    
    require_once "cf/build.2.php";
    require_once "SRP_PLUGIN.php";
    require_once "custom/installer.php";
    require_once "custom/lib/cf.SR_redirect_cache.class.php";
    require_once "custom/lib/cf.SR_database.class.php";
    require_once "custom/lib/cf.SR_option_manager.class.php";
    require_once "custom/lib/cf.SR_redirect_manager.class.php";
    require_once "custom/lib/cf.SR_plugin_menus.class.php";
    
    SRP_PLUGIN::init('wp-seo-redirection-group', __FILE__);
    
    SR_plugin_menus::init();
    SR_plugin_menus::hook_menus();

    seo_redirection_installer::set_version("2.4");
    seo_redirection_installer::hook_installer();

    SR_redirect_manager::hook_redirection();
    
    require 'updater/plugin-update-checker.php';
    $MyUpdateChecker = PucFactory::buildUpdateChecker(
    'http://www.clogica.com/update/wp-update-server/?action=get_metadata&slug=seo-redirection-premium', //Metadata URL.
    __FILE__, //Full path to the main plugin file.
    'seo-redirection-premium' //Plugin slug. Usually it's the same as the name of the directory.
    );