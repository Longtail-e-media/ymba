<?php
/*
* Testimonial Header Title
*/
$tstimg = '';
$tstHtitle = '';
$testinn = '';

if (defined('REVIEWS_PAGE')) {
    $tstimg .= IMAGE_PATH . 'reviews-img.jpg';

    $tstRec = Testimonial::get_alltestimonial();
    if (!empty($tstRec)) {
        foreach ($tstRec as $tstRow) {
            $link = !empty($tstRow->linksrc) ? $tstRow->linksrc : 'JavaScript:Void(0);';
            $tstHtitle .= '<div class="row">
         
                    <div class="col-md-3 review-img text-center">
                        <img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" class="img-circle " alt="' . $tstRow->name . '">
                    </div>
                    
                        <div class="col-md-9 review-text">
                            <p>' . strip_tags($tstRow->content) . '</p>
                            <p class="name">&ndash; <strong>' . $tstRow->name . ', ' . $tstRow->country . '</strong> (Via :<a href="' . $link . '"> ' . $tstRow->via_type . '</a>)</p>
                        </div>
                    </div>
              
            ';
        }
    }
}

$jVars['module:reviews_img'] = $tstimg;

$jVars['module:testimonialList'] = $tstHtitle;


/*
* Testimonial Rand
*/
$tstHead = '';

$tstRand = Testimonial::get_by_rand();
if (!empty($tstRand)) {
    $tstHead .= '<!-- Quote | START -->
	<div class="section quote fade">
		<div class="center">
	    
	        <div class="col-1">
	        	<div class="thumb"><img src="' . IMAGE_PATH . 'testimonial/' . $tstRand->image . '" alt="' . $tstRand->name . '"></div>
	            <h5><em>' . strip_tags($tstRand->content) . '</em></h5>
	            <p><span><strong>' . $tstRand->name . ', ' . $tstRand->country . '</strong> (Via : ' . $tstRand->via_type . ')</span></p>
	        </div>
	        
	    </div>
	</div>
	<!-- Quote | END -->';
}

$jVars['module:testimonial-rand'] = $tstHead;


if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    if ($slug == 'about-us') {
        $testinn .= '<div class="row ">

                <div class="col-md-8 centered text-center ">

                <div class="testimonial">
                <small>Testimonial</small>
                <h2 class="">What our Guest Say</h2>
                <div class="testimonial_inner">';
        $tstRecin = Testimonial::get_alltestimonial();
        if (!empty($tstRecin)) {
            foreach ($tstRecin as $tstRow) {
                $testinn .= '<div class="testi-items">
                    <p> ' . $tstRow->content . '</p>
                    <div class="testi-img">
                    <img class="" src="' . IMAGE_PATH . '/testimonial/' . $tstRow->image . '" alt="' . $tstRow->name . '">
                    <strong>' . $tstRow->name . '</strong>
                    </div>
                    </div>';

            }
        }
        $testinn .= '</div></div></div>
                    </div>
                    ';

    }

}
$jVars['module:testimonial-inner'] = $testinn;


/*
* Testimonial List
*/
$restst = '';
$tstRec = Testimonial::get_alltestimonial();
if (!empty($tstRec)) {
    foreach ($tstRec as $tstRow) {
        $link = !empty($tstRow->linksrc) ? $tstRow->linksrc : 'JavaScript:Void(0);';

        $restst .= '
                    <div class="col-md-3">
                        <div class="client-reveiw">
                            <div class="review-quote">
                                <i class="fa fa-quote-right"></i>
                            </div>
                            <div class="review-desc">
                                <p>' . $tstRow->content . '</p>
                            </div>
                            <div class="happy-client-name">
                                <h6>' . $tstRow->name . ', <span>' . $tstRow->country . '</span></h6>
                            </div>
                        </div>
                    </div>
        ';
    }
}

$jVars['module:testimonial'] = $restst;
?>