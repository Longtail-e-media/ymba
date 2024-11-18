<?php
$resinndetail = $innbred = '';

if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Article::find_by_slug($slug);

    if (!empty($recRow)) {
        $images = unserialize($recRow->banner);
        $file_path = SITE_ROOT . 'images/articles/banner/' . @$images[0];
        $img = (file_exists($file_path) AND !empty($images[0])) ? IMAGE_PATH . 'articles/banner/' . @$images[0] : BASE_URL . 'template/cms/images/default-media-event-detail-banner.jpg';
        $innbred .= '<img src="' . $img . '" alt="' . $recRow->title . '">';
        $innbred .= '<h2 id="article-title">' . $recRow->sub_title . '</h2>';

        if (!empty($recRow->category_id)) {
            $relatedArticles = Article::find_articles_by_category($recRow->category_id);
            if (!empty($relatedArticles)) {
                $nav = $nav_panel = '';
                $i = 1;
                foreach ($relatedArticles as $relatedArticle) {
                    $active = ($relatedArticle->slug == $slug) ? 'active' : '';
                    $nav .= '
                    <li class="nav-item">
                        <!--<a class="nav-link ' . $active . '" href="#' . $relatedArticle->slug . '" data-toggle="tab">' . $relatedArticle->title . '</a>-->
                        <a class="nav-link ' . $active . '" href="' .BASE_URL.'page/'. $relatedArticle->slug . '">' . $relatedArticle->title . '</a>
                    </li>
                ';
                    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', $relatedArticle->content);
                    $content = (!empty($content[1])) ? $content[1] : $content[0];
                    if ($relatedArticle->id == 28) {
                        $recognitionImages = GalleryImage::getImagelist_by(19);
                        $nav_panel .= '
                        <style type="text/css">
                        .recognition {
                                margin-bottom: 30px;
                                text-align: center;
                            }
                            .recognition h6{
                                margin-top: 10px;
                            }
                        </style>
                        <article class="tab-pane container ' . $active . '" id="' . $relatedArticle->slug . '">
                            <div class="row">
                        ';
                        foreach ($recognitionImages as $recognitionImage) {
                            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $recognitionImage->image;
                            if (file_exists($file_path)) {
                                $nav_panel .= '
                                <div class="col-md-4 ' . $relatedArticle->slug . '">
                                    <a data-lightbox="roadtrip" href="' . IMAGE_PATH . 'gallery/galleryimages/' . $recognitionImage->image . '">
                                        <img height="150" src="' . IMAGE_PATH . 'gallery/galleryimages/' . $recognitionImage->image . '" />
                                    </a>
                                    <h6>' . $recognitionImage->title . '</h6>
                                </div>
                            ';
                            }
                        }
                        $nav_panel .= '
                            </div>
                        </article>
                    ';
                    } else {
                        $nav_panel .= '
                        <article class="tab-pane container ' . $active . '" id="' . $relatedArticle->slug . '">
                        ' . $content . '
                        </article>
                    ';
                    }
                    $i++;
                }
            }

            $resinndetail .= '
            <div class="col-md-3">
                <ul class="nav nav-tabs left-tabs">
                    ' . $nav . '
                </ul>
            </div>

            <div class="col-md-9">
                <div class="container">
                    <div class="tab-content">
                    ' . $nav_panel . '
                    </div>
                </div>
            </div>
        ';
        } else {
            $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', $recRow->content);
            $content = (!empty($content[1])) ? $content[1] : $content[0];
            $resinndetail .= '
            <div class="col-md-12">
            ' . $content . '
            </div>
        ';
        }
    } else {
        redirect_to(BASE_URL . '404');
    }

}

$jVars['module:inner-detail'] = $resinndetail;
$jVars['module:inner-bread'] = $innbred;


 $home_article = '';
$resinfc='';

if (defined('HOME_PAGE')) {
    $home_articles = Article::homepageArticle(67);

    if(!empty($home_articles)){
        // pr($home_articles);
        foreach($home_articles as $infcRow) {
            $contentinfc = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($infcRow->content));
            $content = (!empty($contentinfc[0])) ? $contentinfc[0] : $contentinfc[0];
            $readmoreinfc = (count($contentinfc) > 1) ? '<a href="'.BASE_URL.'page/'.$infcRow->slug.'" class="ravis-btn btn-type-2">Read More</a>' : '' ;
            if($infcRow->image != "a:0:{}") {
                $imageList = unserialize($infcRow->image);
                if(!empty($imageList)){
                $imgno = array_rand($imageList);
                $file_path = SITE_ROOT.'images/articles/'.$imageList[$imgno];
                if(file_exists($file_path)) {
                    $imglink = IMAGE_PATH.'articles/'.$imageList[$imgno];
                }
                else {
                    $imglink = BASE_URL.'template/cms/images/welcome.jpg';
                }
            }
            }
            else {
                $imglink = BASE_URL.'template/cms/images/welcome.jpg';
            }

            $home_article .='<section class="home_page_article">
          <div class="container">
           '.$content.'
            </div>
        </section>
            ';

        }
    }

}
$jVars['module:home-article'] = $home_article;



?>