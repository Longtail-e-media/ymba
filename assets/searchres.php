<?php
require_once("../includes/initialize.php");
if( $_REQUEST["district"] ){

   $distid = $_REQUEST['district'];

   echo Location::get_all_locationdata_front($distid); 
}
?>