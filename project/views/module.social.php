<?php
/*
* Top Social Links
*/
$socialRec = SocialNetworking::getSocialNetwork();

$resocl = '';

if (!empty($socialRec)) {
//    $resocl .= '<ul class="list-inline con-icon">';
    foreach ($socialRec as $socialRow) {
        $resocl .= '<li class="icon-social"><a target="_blank" href="' . $socialRow->linksrc . '">
	    	        <img src="' . IMAGE_PATH . 'social/' . $socialRow->image . '" alt = "' . $socialRow->title . '">
	  	        </a>
            </li>';
    }
//    $resocl .= '</ul>';
}


$jVars['module:socilaLinkcontact'] = $resocl;


/*
* Home social link
*/
$ressl = '';

if (!empty($socialRec)) {
    $ressl .= '<ul class="footer-menu list-unstyled">';
    foreach ($socialRec as $socialRow) {
        $ressl .= '
            <li>
                <a href="' . $socialRow->linksrc . '" target="_blank" >
                    <i class="' . $socialRow->image . '" aria-hidden="true"></i>
                </a>
            </li>
        ';
    }
    $ressl .= '</ul>';
}

$jVars['module:socilaLinkbtm'] = $ressl;


?>