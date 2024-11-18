<?php


$relistnews = '';
$page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
$year = (isset($_REQUEST["year"]) and !empty($_REQUEST["year"])) ? $_REQUEST["year"] : "";

if (!empty($year)) {
    $sql = "SELECT * FROM tbl_blog WHERE status='1' AND type='1' AND YEAR(blog_date) = " . $year . " ORDER BY blog_date DESC";
} else {
    $sql = "SELECT * FROM tbl_blog WHERE status='1' AND type='1' ORDER BY blog_date DESC";
}
$limit = 6;
$total = $db->num_rows($db->query($sql));
// print_r($total); die();
$startpoint = ($page * $limit) - $limit;
$sql .= " LIMIT " . $startpoint . "," . $limit;
$query = $db->query($sql);
$Records = Blog::find_by_sql($sql);

if (!empty($Records)) {
    $relistnews .= '<div class="blog-pages pt-130 pt-200">
            <div class="container">';
    $relistnews .= '<div class="row">';
    foreach ($Records as $RecRow) {
        $file_path = SITE_ROOT . 'images/blog/thumb/' . $RecRow->thumb_upload;
        if (file_exists($file_path) and !empty($RecRow->thumb_upload)) {

            $day = date("d", strtotime($RecRow->blog_date));
            $month = date("M", strtotime($RecRow->blog_date));
            $relistnews .= '<div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="single-blog mb-60 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1s">
                        <div class="blog-thubmnail">
                            <a href="' . BASE_URL . 'newsdetail/' . $RecRow->slug . '">
                                <img src="' . IMAGE_PATH . 'blog/thumb/' . $RecRow->thumb_upload . '" alt="' . $RecRow->title . '" style="width: 360px; height: 281px;">
                            </a>
                            <div class="blog-post">
                                <span class="post-day">
                                  ' . $day . '
                                </span>
                                <span class="post-month">
                                   ' . $month . '
                                </span>
                            </div>
                        </div>
                        <div class="blog-desc">
                            <h6><a href="' . BASE_URL . 'newsdetail/' . $RecRow->slug . '">' . $RecRow->title . '</a></h6>
                            <p' . substr($RecRow->brief, 0, 50) . ' </p>
                            <div class="bolg-continue">
                                <a href="' . BASE_URL . 'newsdetail/' . $RecRow->slug . '">Continue Reading</a>
                            </div>
                        </div>
                    </div>
                </div>';
        } else {
            $relistnews .= '<div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="single-blog mb-60 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1s">
                        <div class="blog-desc">
                            <h6><a href="' . BASE_URL . 'newsdetail/' . $RecRow->slug . '">' . $RecRow->title . '</a></h6>
                            <p' . substr($RecRow->brief, 0, 50) . ' </p>
                            <div class="bolg-continue">
                                <a href="' . BASE_URL . 'newsdetail/' . $RecRow->slug . '">Continue Reading</a>
                            </div>
                        </div>
                    </div>
                </div>';
        }
    }
    $relistnews .= '</div>';
    if (!empty($year)) {
        $relistnews .= get_front_pagination($total, $limit, $page, BASE_URL . 'news-list/' . $year);;
    } else {
        $relistnews .= get_front_pagination($total, $limit, $page, BASE_URL . 'news-list');
    }
    $relistnews .= '</div>
    </div>';

}
$jVars['module:news-list'] = $relistnews;


$renewsdetail = $newsbread = '';
if (defined('NEWS_PAGE') and isset($_REQUEST['slug'])) {
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $detspRec = Blog::find_by_slug($slug);
    if (!empty($detspRec)) {
        $day = date("d", strtotime($detspRec->blog_date));
        $month = date("M", strtotime($detspRec->blog_date));
        $renewsdetail .= ' <article class="blog-details">
                            <div class="blog-thubmnail">';
        if ($detspRec->image) {
            $renewsdetail .= '        <a href="#">
                                    <img src="' . IMAGE_PATH . 'blog/' . $detspRec->image . '" alt="' . $RecRow->title . '" style="width: 750px;">
                                </a>';
        }
        $renewsdetail .= '       <div class="blog-post">
                                    <span class="post-day">
                                      ' . $day . '
                                    </span>
                                    <span class="post-month">
                                       ' . $month . '
                                    </span>
                                </div>
                            </div>
                            <div class="article-desc bg-1">
                                <div class="post-title">
                                    <h4>' . $detspRec->title . '</h4>
                                </div>
                                <div class="post-content">
                                    ' . $detspRec->content . '
                                </div>
                                <div class="article-action">
                                  
                                    <div class="article-share">
                                        <div class="share-social">
                                            <div class="sharethis-inline-share-buttons"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>';

        $newsbread .= '<div class="row">
                    <div class="col-md-12">
                        <div class="breadcrumbs-inner">
                            <div class="breadcrumbs-title text-center">
                                <h1>' . $detspRec->title . '</h1>
                            </div>
                            <div class="breadcrumbs-menu">
                                <ul>
                                    <li><a href="' . BASE_URL . '">Home /</a></li>
                                     <li><a href="' . BASE_URL . 'news-list">News /</a></li>
                                    <li>' . $detspRec->title . '</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>';
    }
}
$jVars['module:news-detail'] = $renewsdetail;
$jVars['module:news-bread'] = $newsbread;


$archivenews = $year = '';
$sql = "SELECT blog_date FROM tbl_blog GROUP BY year(blog_date)";
$Recordarchive = Blog::find_by_sql($sql);
// var_dump($Recordarchive); die();
if (!empty($Recordarchive)) {
    $archivenews .= '<div class="archive-list">
                                    <ul>';
    foreach ($Recordarchive as $RecRowa) {
        $year = date('Y', strtotime($RecRowa->blog_date));
        $archivenews .= '<li><a href="' . BASE_URL . 'news-list/' . $year . '/page/1">' . date('Y', strtotime($RecRowa->blog_date)) . '</a></li>';

    }
    $archivenews .= '</ul>
                                </div>';
}

$jVars['module:archive-detail-news'] = $archivenews;
?>