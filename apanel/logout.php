<?php
require_once("../includes/initialize.php");
log_action($GLOBALS['login']['login'] . $session->get('loginUser') . $GLOBALS['login']['loggedOut'], 1, 2);
$session->clear('u_id');
$session->clear('accesskey');
@$session->clear('m_dashboard');
redirect_to(BASE_URL . 'apanel/login');

?>