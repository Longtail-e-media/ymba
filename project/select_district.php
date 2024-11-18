<?php
require_once("includes/initialize.php");
if( $_REQUEST["province"] ){

   $provid = $_REQUEST['province'];

   echo District::get_all_districtdata_front($provid); 
}
?>