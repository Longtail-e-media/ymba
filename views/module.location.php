<?php $configRec = Config::find_by_id(1);
$emlAddress = str_replace('@', '&#64;', $configRec->email_address);
$emlAddress = str_replace('.', '&#46;', $emlAddress);
/*
* Top Location
*/
$telno = explode(",", $configRec->contact_info);
if (!@$telno[1]) {
    $tellinked = '<a href="tel:' . $telno[0] . '">' . $telno[0] . '</a> ';
    $telenum = '<a href="tel:' . $telno[0] . '">' . $telno[0] . '
                                    </a>';
} else {
    $tellinked = '<a href="tel:' . $telno[0] . '">' . $telno[0] . '</a> | <a href="tel:' . $telno[1] . '">' . $telno[1] . '</a>';
    $telenum = '<p><a class="noblok" href="tel:' . $telno[0] . '">' . $telno[0] . '</a></p><p><a class="noblok" href="tel:' . $telno[1] . '">' . $telno[1] . '</a></p>';
}

$tpres = $resulted = '';


$rescnt = $locatfoot = '';
// $tellArr = explode('- ', $siteRegulars->contact_info);
// $telArr = explode('/', $tellArr[1]);
// $tellno = '<a href="tel:01-' . $telArr[0] . '" style="color: #222222">(977-1) - ' . $telArr[0] . '/</a><a href="tel:01-' . $telArr[1] . '" style="color: #222222">' . $telArr[1] . '</a>';
$tellno = '<a href="tel:' . $siteRegulars->contact_info . '">' . $siteRegulars->contact_info . '</a>';
$rescnt .= '
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                <div class="info-item v-align">
                    <div class="info-icon">
                        <i class="fa fa-map-marker-alt"></i>
                    </div>
                    <div class="info-content">
                        <p>' . $siteRegulars->fiscal_address . '</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                <div class="info-item v-align">
                    <div class="info-icon">
                        <i class="fa fa-phone"></i>
                    </div>
                    <div class="info-content">
                        <p>' . $tellno . '</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                <div class="info-item v-align">
                    <div class="info-icon">
                        <i class="fa fa-envelope"></i>
                    </div>
                    <div class="info-content">
                        <p><a href="mailto: ' . $emlAddress . '">' . $emlAddress . '</a></p>
                    </div>
                </div>
            </div>';

$jVars['module:contact-location'] = $rescnt;


/*
* Google map
*/
$resgmap = $topinfo = '';
if ($configRec->location_type == 1) {
    $resgmap .= '
        <div class="left-part">
            <iframe src="' . $configRec->location_map . '" width="100%" height="480" allowfullscreen="true" aria-hidden="false" tabindex="0"></iframe>
        </div>
    ';
} else {
    $resgmap .= '<div class="map">
        <img src="' . IMAGE_PATH . 'preference/locimage/' . $configRec->location_image . '" alt="' . $configRec->sitetitle . '" class="img-responsive">
    </div>';
}

$jVars['module:location-map'] = $resgmap;

if ($configRec):
    $resulted .= '
        <div class="f-contact-details">
            <div class="single-contact-list">
                <div class="contact-icon">
                    <img src="' . BASE_URL . 'template/cms/img/icon/c-1.png" alt="">
                </div>
                <div class="contact-text">
                    <p>' . ucwords($configRec->fiscal_address) . '</p>
                </div>
            </div>
            <div class="single-contact-list">
                <div class="contact-icon">
                    <img src="' . BASE_URL . 'template/cms/img/icon/c-2.png" alt="">
                </div>
                <div class="contact-text">
                    <p>Telephone :<a href="' . $configRec->contact_info . '"> ' . $configRec->contact_info . '</a></p>
                    <p>Mobile :<a href="' . $configRec->fax . '"> ' . $configRec->fax . '</a></p>
                </div>
            </div>
            <div class="single-contact-list">
                <div class="contact-icon">
                    <img src="' . BASE_URL . 'template/cms/img/icon/c-3.png" alt="">
                </div>
                <div class="contact-text">
                    <p>Email :<a href="' . $configRec->email_address . '">
                        ' . $configRec->email_address . '</a></p>
                    <!-- <p>Web : www.example.com</p> -->
                </div>
            </div>
            <br>
            <div class="header-topbar-menu">
                <ul>' . $jVars['module:socilaLinkcontact'] . '</ul>
            </div>
        </div>
';

    $topinfo .= '
                <div class="header-topbar-menu">
                    <ul>
                        <li>
                            <span>
                                <img src="' . BASE_URL . 'template/cms/img/icon/phone.png" alt="' . $configRec->sitetitle . '">
                                ' . $tellinked . '
                            </span>
                        </li>
                        <li>
                            <span>
                                <img src="' . BASE_URL . 'template/cms/img/icon/mail.png" alt="' . $configRec->sitetitle . '">
                            </span>
                                <a href="mailto:' . $emlAddress . '">' . $emlAddress . '</a>
                         </li>
                        ' . $jVars['module:socilaLinkcontact'] . '
                    </ul>
                </div>
    ';
endif;

$jVars['module:footerLocation'] = $resulted;
$jVars['module:topinfo'] = $topinfo;

?>