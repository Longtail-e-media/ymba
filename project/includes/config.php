<?php 

$online = ($_SERVER['HTTP_HOST'] == "localhost" || $_SERVER['HTTP_HOST'] == "localhost:2020" || $_SERVER['HTTP_HOST'] == "127.0.0.1" || $_SERVER['HTTP_HOST'] == "192.168.2.14") ? false : true;
defined('SITE_FOLDER') ? '' : define('SITE_FOLDER', 'project');
defined('SITE_STR')    ? '' : define('SITE_STR', '');

if($online){ // ONLINE SETUP

define('DB_SERVER',   'localhost');
define('DB_USER', 	  'ycafeslx_musicvideo');
define('DB_PASS', 	  '~p(Z~Ga*#8^d');
define('DB_NAME', 	  'ycafeslx_musicvideo');

} else { 	// LOCAL SETUP

define('DB_SERVER',   'localhost');
define('DB_USER', 	  'root');
define('DB_PASS', 	  '');
define('DB_NAME', 	  'omsir');

}

?>
