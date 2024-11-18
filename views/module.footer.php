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
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="footer-about">
                            <h5>Contact</h5>
                            <ul class="footer-about-info footer__icons">
                                <li>'.$siteRegulars->fiscal_address.'</li>
                                 <li><a href="mailto: '.$emlAddress.'">'.$emlAddress.'</a></li>
                                <li> <i class="fas fa-phone-alt"></i> &nbsp;&nbsp; '.$tellno.'</li>
                            </ul>
                            ' . $jVars['module:socilaLinkbtm'] . '
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12 offset-lg-1">
                        <div class="footer-about quick_links">
                            <h5>Quick Links</h5>
                            <ul class="footer-about-info">
                       <!--  <li><a href="">Abouts Us</a></li>
                              <li><a href="">Photo Gallery</a></li>
                              <li><a href="">Executive Members</a></li>
                              <li><a href="">Members</a></li> -->
                              '.$jVars['module:footer-menu'].'
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="footer-about google_map">
'.$resgmap.'
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