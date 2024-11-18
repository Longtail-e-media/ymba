<?php
$rescontdetail = '';
$siteRegulars = Config::find_by_id(1);
$phone = explode(",", $siteRegulars->contact_info);
if (defined('CONTACT_PAGE')) {
    $rescontdetail .= '
        <div id="contact-form1" class="contact-form">
            <h3>Keep in Touch</h3>
            <div id="msg" style="display:none" class="alert alert-success"></div>

            <form id="contact" name="contact" method="post">
                <div class="form-group">
                    <input type="text" name="name" class="form-control" id="fname" placeholder="Full Name">
                </div>
                <div class="form-group">
                    <input type="email" name="email"  class="form-control" id="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <input type="text" name="phone" class="form-control" id="phnumber" placeholder="Phone number">
                </div>
                <div class="textarea">
                    <textarea name="message" placeholder="Enter a message"></textarea>
                </div>
                <div class="comment-btn text-right mar-top-15">
                <button type="submit" class="biz-btn" id="submit" name="submit">Submit</button>
                </div>
            </form>
        </div>
    ';
}

$jVars['module:contact-form'] = $rescontdetail;


