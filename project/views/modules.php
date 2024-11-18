<?php
// SITE REGULARS
$jVars['site:header'] = Config::getField('headers', true);
$jVars['site:footer'] = Config::getField('footer', true);
$siteRegulars = Config::find_by_id(1);
$jVars['site:copyright'] = '
        <p>' . str_replace('{year}', date('Y'), $siteRegulars->copyright) . ' 
        <span>Designed By: <a href="http://longtail.info/n/" target="_blank">Longtail e-media</a></span></p>
        ';

$jVars['site:fevicon'] = '<link rel="shortcut icon" href="' . IMAGE_PATH . 'preference/' . $siteRegulars->icon_upload . '"> 
							    <link rel="apple-touch-icon" href="' . IMAGE_PATH . 'preference/' . $siteRegulars->icon_upload . '"> 
							    <link rel="apple-touch-icon" sizes="72x72" href="' . IMAGE_PATH . 'preference/' . $siteRegulars->icon_upload . '"> 
							    <link rel="apple-touch-icon" sizes="114x114" href="' . IMAGE_PATH . 'preference/' . $siteRegulars->icon_upload . '">';
$jVars['site:logo'] = '<a href="' . BASE_URL . 'home" class="navbar-brand">
                            <img  alt="' . $siteRegulars->sitetitle . '" src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" width="100%" class="img-fluid">
                        </a>';

$jVars['site:email'] = '<div class="contact-text">
                                        <p>Email : <a href="mailto:' . $siteRegulars->mail_address . '">' . $siteRegulars->mail_address . '</a> </p>
                                        <p>Web : http://brihatpropertysolutions.com</p>
                                    </div>';
$jVars['site:email-header'] = '<a href="mailto:' . $siteRegulars->mail_address . '">' . $siteRegulars->mail_address . '</a>';

$jVars['site:blink-header'] = '<li>  
                                 Register Your Property on Brihat |<span class="blink">Free</span> 
                                </li>';
if (!isset($_SESSION['user_id']) AND isset($_SESSION['user_id']) < 1) {
    $jVars['site:login-register-header'] = '<li class="add-property icon-social">
                                            <a href="<jcms:site:baseurl/>user/login"><i class="fa fa-user"></i> Sign In</a>
                                        </li>
                                        <li class="add-property icon-social">
                                            <a href="<jcms:site:baseurl/>user/registration"><i class="fa fa-user-plus"></i> Sign Up</a>
                                        </li>';
} else {
    $jVars['site:login-register-header'] = '<li class="add-property icon-social">
                                            <a href="<jcms:site:baseurl/>user/dashboard"><i class="menu-icon fa fa-dashboard"></i> Dashboard</a>
                                        </li>
                                        <li class="add-property icon-social">
                                            <a href="<jcms:site:baseurl/>user/logout"><i class="fa fa-power-off"></i> Logout</a>
                                        </li>';
}


$jVars['site:seotitle'] = MetaTagsFor_SEO();
$jVars['site:baseurl'] = BASE_URL;


// view modules 
require_once("views/module.contact.php");
require_once("views/module.services.php");
require_once("views/module.search.php");
require_once("views/module.news.php");

// SITE MODULES
$modulesList = Module::getAllmode();
foreach ($modulesList as $module):
    $fileName = "module." . $module->mode . ".php";
    if (file_exists("views/" . $fileName)) {
        require_once("views/" . $fileName);
    }
endforeach;

require_once("views/module.footer.php");
require_once("views/module.media.php");
?>