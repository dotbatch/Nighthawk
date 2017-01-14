<?php
# Database Configuration
define( 'DB_NAME', 'wp_nighthawktires' );
define( 'DB_USER', 'nighthawktires' );
define( 'DB_PASSWORD', '3Zl2mIRMtZO8fEuzp8mC' );
define( 'DB_HOST', '127.0.0.1' );
define( 'DB_HOST_SLAVE', '127.0.0.1' );
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'wp_';

# Security Salts, Keys, Etc
define('AUTH_KEY', '-Hxyh3ytzQ]${V:1u^|P&~-7u;Z0|A]$~0YZR6SxPlaD++kK2=8:+5#v=yu.e^yA');
define('SECURE_AUTH_KEY', 'BJ]M|F~/oQQ;[7= Ad>t|w6+2A^nf+[ALuC:SPjP|4Ej+DBg@Q3^:M+U L!Vus4<');
define('LOGGED_IN_KEY', '3:G4mM}:wf0xo/p|h-z:?7dCX+^GN5?s&}*E{[)|+xgW/GvVd;~xxt7}%Q?~~G|[');
define('NONCE_KEY', '^x}+I^P<LK5YL!9EbJUrkY`&Tp{+Q2/>N90@3s/eI~,^Y->)=c1Dg<gb~EOr86jr');
define('AUTH_SALT',        '2R1Ww5jR3}>4c#.&(AB$cvmA.pVkE=d%@+)v%OjE}+7x<;9:ML,+-&.0u*#vt*Lc');
define('SECURE_AUTH_SALT', 'ZlKgEkC,,R6H#x<sznX}XX+kZ(tW7_6.*:q.6BOWR<?H1F4)V6/w)*Vs=HHERCvV');
define('LOGGED_IN_SALT',   ' ,B%AHbi6F1q^y}gt5ikR_(|8#-}aTec p-A#5LME-+ECRyHT*XT*Cgi|O&//p=}');
define('NONCE_SALT',       'u:lEem|-@#GPwy?Q8![qPF={kQXmP0&8/Br9^GO3$E6lO$IQ;BY.^v^mc)aYIe){');


# Localized Language Stuff

define( 'WP_CACHE', TRUE );

define( 'WP_AUTO_UPDATE_CORE', false );

define( 'PWP_NAME', 'nighthawktires' );

define( 'FS_METHOD', 'direct' );

define( 'FS_CHMOD_DIR', 0775 );

define( 'FS_CHMOD_FILE', 0664 );

define( 'PWP_ROOT_DIR', '/nas/wp' );

define( 'WPE_APIKEY', 'd06edce3b82d580d04513249b95fac07c07eeb1b' );

define( 'WPE_FOOTER_HTML', "" );

define( 'WPE_CLUSTER_ID', '100470' );

define( 'WPE_CLUSTER_TYPE', 'pod' );

define( 'WPE_ISP', true );

define( 'WPE_BPOD', false );

define( 'WPE_RO_FILESYSTEM', false );

define( 'WPE_LARGEFS_BUCKET', 'largefs.wpengine' );

define( 'WPE_SFTP_PORT', 2222 );

define( 'WPE_LBMASTER_IP', '' );

define( 'WPE_CDN_DISABLE_ALLOWED', true );

define( 'DISALLOW_FILE_MODS', FALSE );

//define( 'DISALLOW_FILE_EDIT', FALSE );

define( 'DISABLE_WP_CRON', false );

define( 'WPE_FORCE_SSL_LOGIN', false );

define( 'FORCE_SSL_LOGIN', false );

/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/

define( 'WPE_EXTERNAL_URL', false );

//define( 'WP_POST_REVISIONS', FALSE );  

define( 'WPE_WHITELABEL', 'wpengine' );

define( 'WP_TURN_OFF_ADMIN_BAR', false );

define( 'WPE_BETA_TESTER', false );

umask(0002);

$wpe_cdn_uris=array ( );

$wpe_no_cdn_uris=array ( );

$wpe_content_regexs=array ( );

$wpe_all_domains=array ( 0 => 'www.nighthawktires.com', 1 => 'nighthawktires.wpengine.com', 2 => 'nighthawktires.com', );

$wpe_varnish_servers=array ( 0 => 'pod-100470', );

$wpe_special_ips=array ( 0 => '104.199.126.146', );

$wpe_ec_servers=array ( );

$wpe_largefs=array ( );

$wpe_netdna_domains=array ( 0 =>  array ( 'match' => 'www.nighthawktires.com', 'zone' => '2sg08z42jmgr34n2tsem6rp1', 'enabled' => true, ), );

$wpe_netdna_domains_secure=array ( );

$wpe_netdna_push_domains=array ( );

$wpe_domain_mappings=array ( );

$memcached_servers=array ( 'default' =>  array ( 0 => 'unix:///tmp/memcached.sock', ), );
define('WPLANG','');

# WP Engine ID
define( 'DISALLOW_FILE_EDIT', FALSE );
define( 'SAVEQUERIES', false );
define( 'WP_DEBUG', false );
define( 'WP_POST_REVISIONS', FALSE );         
define( 'WP_HOME', 'http://www.nighthawktires.com' );
define( 'WP_SITEURL', 'http://www.nighthawktires.com' );

# WP Engine Settings






# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');

$_wpe_preamble_path = null; if(false){}
