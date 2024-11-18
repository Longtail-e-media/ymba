<?php
if (!isset($_GET['page'])) {
    require_once("1dashboard.php");
} else {
    if (file_exists($_GET['page'] . "/" . $_GET['page'] . ".php")) {
        require_once($_GET['page'] . "/" . $_GET['page'] . ".php");
    } else {
        require_once("1dashboard.php");
    }
}
?>