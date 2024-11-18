<?php

$emlAddress = str_replace('@', '&#64;', $siteRegulars->email_address);
$emlAddress = str_replace('.', '&#46;', $emlAddress);

// $tellArr = explode('- ', $siteRegulars->contact_info);
// $telArr = explode('/', $tellArr[1]);
// $tellno = '<a href="tel:01-' . $telArr[0] . '">(977-1) - ' . $telArr[0] . '/</a><a href="tel:01-' . $telArr[1] . '">' . $telArr[1] . '</a>';
$tellno = '<a href="tel:' . $siteRegulars->contact_info . '">' . $siteRegulars->contact_info . '</a>';

$footer = '';
$footer .= '
     <footer>
        <div class="footer-upper pad-bottom-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="footer-about">
                            <ul class="footer-about-info">
                                <li><i class="fa fa-map"></i> '.$siteRegulars->fiscal_address.'</li>
                            </ul>
                            
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="footer-about">
                            <ul class="footer-about-info">
                                <li><i class="fa fa-phone"></i>'.$tellno.'</li>
                            </ul>
                            
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="footer-about">
                            <ul class="footer-about-info">
                                <li><i class="fa fa-envelope"></i><a href="mailto: '.$emlAddress.'">'.$emlAddress.'</a></li>
                            </ul>
                            
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-12 col-xs-12">
                        <div class="footer-about">
                        <ul class="social-links">
                            ' . $jVars['module:socilaLinkbtm'] . '
                        </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                <div class="copyright-text pull-left">
                    ' . $jVars['site:copyright'] . '
                </div>
            </div>
        </div>
    </footer>
';

$jVars['module:footer'] = $footer;
?>