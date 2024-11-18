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
if (defined('HOME_PAGE')) {
    $records = Article::homepageArticle(3);
    
    if(empty($records)){
        $home_article .= ' 
        <section class="home_page_article">
            <div class="container">
                <div class="row item_center">';
        $home_article .= ' 
                    <div class="col-sm-8">
                        <h2>Welcome to Music Video Directors Guild of Nepal</h2>
                        <p>The Music Video Directors Guild of Nepal has been formed to work for the welfare of music video directors. Our 15 members guild is the first ever entity formed by music video directors in Nepal. This sector helps sustain artists in the Nepali movie industry during the pandemic. Now that the guild has been formed, we aim to make this sector more systematic while encouraging directors to stand up for their rights.
</p>
                            <a href="'.BASE_URL.'page/about">Read More</a>
                    </div>
                    <div class="col-sm-4">
                        <img src="template/cms/images/art1.jpg" width="100%">
                    </div>
                    <!--<div class="col-sm-4">
                        <h2>Dipankar Buddha <small>2008 | 24″ x 36″</small></h2>
                        <p>Collected by Mr. Purnaman Shakya</p>
                        <a href="'.BASE_URL.'gallery" class="btn btn-default">More of Master Pieces</a>
                    </div>-->
                </div>
            </div>
        </section>
        ';
    }
    
}
$jVars['module:home-article'] = $home_article;
?>