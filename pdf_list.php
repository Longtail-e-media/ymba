<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);

define('PDF_LIST', 0); // Track homepage.
define('JCMSTYPE', 0); // Track Current site language.

require_once("includes/initialize.php");

$currentTemplate	= Config::getCurrentTemplate('template');
$jVars 				= array();
$template 			= "template/{$currentTemplate}/pdf.html";

require_once('views/modules.php');

template($template, $jVars, $currentTemplate);

?>