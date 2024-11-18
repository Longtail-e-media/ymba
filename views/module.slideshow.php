<?php
/* 
* Module Slideshow
*/

$reslide = '';

$Records = Slideshow::getSlideshow_by();

if ($Records) {
    $reslide.='<div class="carousel-inner">';
    $i = 0;
    foreach ($Records as $RecRow):
        $file_path = SITE_ROOT . 'images/slideshow/' . $RecRow->image;
        if (file_exists($file_path) and !empty($RecRow->image)):
            $active = ($i == 0) ? 'active' : '';
            $splitSRC = explode("http://", $RecRow->linksrc);
            $linkTarget = ($RecRow->linktype == 1) ? ' target="_blank" ' : '';
            $linksrc = (count($splitSRC) == 1) ? BASE_URL . $RecRow->linksrc : $RecRow->linksrc;
            $link = ($RecRow->linksrc != '') ? '<a href="' . $linksrc . '" ' . $linkTarget . '><button class="button" style="vertical-align:middle"><span>Explore </span></button>' : '<a href="javascript:void(0);" >';
            $reslide .= '
                <div class="carousel-item ' . $active . '">
                    <img src="' . IMAGE_PATH . 'slideshow/' . $RecRow->image . '" alt="' . $RecRow->title . '">
                    <div class="carousel-caption">
                        <!-- <h1>' . $RecRow->title . '</h1>-->
                        <p>' . strip_tags($RecRow->content) . '</p>
                        '.$link.'
                    </div>
                </div>
            ';
            $i++;
        endif;
    endforeach;
    $reslide.='</div>';
    if(sizeof($Records) > 1){
        $reslide.='
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        ';
    }
}

$jVars['module:slideshow'] = $reslide;


?>
