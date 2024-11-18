<?php
$rerecentblog='';

$Recordsr = Blog::get_latestblog_by(4);
// var_dump($Records); die();
if(!empty($Recordsr)) {
    $rerecentblog.='<div class="recent-post-inner">';
    foreach($Recordsr as $RecRow) {   
        $file_path = SITE_ROOT.'images/blog/thumb/'.$RecRow->thumb_upload;
        if(file_exists($file_path) and !empty($RecRow->thumb_upload)) {
            
            $rerecentblog.='<div class="single-recent-post fix">
                                        <div class="recent-post-thumbnail">
                                            <a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'"><img src="'.IMAGE_PATH.'blog/thumb/'.$RecRow->thumb_upload.'" alt="'.$RecRow->title.'"></a>
                                        </div>
                                        <div class="recent-post-desc">
                                            <div class="post-title">
                                                <h6><a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">'.$RecRow->title.'</a></h6>
                                            </div>
                                            <div class="post-publish">
                                                <p>'.$RecRow->author.' / '.$RecRow->blog_date.'</p>
                                            </div>
                                            <!-- <div class="post-content">
                                                 <p>Lorem must explain to ten how all this mistakenea </p>
                                            </div>-->
                                        </div>
                                    </div>';
        }
  }
 $rerecentblog.='</div>';
}

$jVars['module:recent-homefour-blog'] = $rerecentblog;


$rehblog='';

$Recordsh = Blog::get_latesthomeblog_by(1);
// var_dump($Recordsh); die();
if(!empty($Recordsh)) {
    $rehblog.='<article class="blog-details">';
    foreach($Recordsh as $RecRow) {   
        $file_path = SITE_ROOT.'images/blog/'.$RecRow->image;
        if(file_exists($file_path) and !empty($RecRow->image)) {
            
        $day = date("d", strtotime($RecRow->blog_date));
        $month = date("M", strtotime($RecRow->blog_date));
            $rehblog.=' <div class="blog-thubmnail">
            <a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">
            <img src="'.IMAGE_PATH.'blog/'.$RecRow->image.'" alt="'.$RecRow->title.'">
            </a>
            <div class="blog-post">
            <span class="post-day">
            '.$day.'
            </span>
            <span class="post-month">
           '.$month.'
            </span>
            </div>
            </div>
            <div class="article-desc1 bg-1">
            <div class="blog-desc">
            <h6><a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">'.$RecRow->title.'</a></h6>
            <!--  <p class="post-content">Haven  the best theme for  elit, sed do eiusmod tempor dolor sit amet, conse ctetur adipiscing elit, sed do eismod tempor incididunt </p> -->
            <div class="bolg-continue">
            <p>'.$RecRow->author.' | '.$RecRow->blog_date.'</p>
            </div>
            </div>
            </div>';
        }
  }
 $rehblog.='</div>';

}


$jVars['module:recent-homeone-blog'] = $rehblog;


$relistblog='';
        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"]))? $_REQUEST["pageno"] : 1;
         $year = (isset($_REQUEST["year"]) and !empty($_REQUEST["year"])) ? $_REQUEST["year"] : "";

         if (!empty($year)) {
        $sql = "SELECT * FROM tbl_blog WHERE status='1' AND type='0' AND YEAR(blog_date) = " . $year . " ORDER BY blog_date DESC";
    } else {
        $sql = "SELECT * FROM tbl_blog WHERE status='1' AND type='0' ORDER BY blog_date DESC";
    }
        $limit = 9;
        $total = $db->num_rows($db->query($sql));
        // print_r($total); die();
        $startpoint = ($page * $limit) - $limit; 
        $sql.=" LIMIT ".$startpoint.",".$limit;
        $query = $db->query($sql);
     $Records=Blog::find_by_sql($sql);

if(!empty($Records)) {
    $relistblog.='<div class="blog-pages pt-130 pt-200">
            <div class="container">';
    $relistblog.='<div class="row">';
    foreach($Records as $RecRow) {   
        $file_path = SITE_ROOT.'images/blog/thumb/'.$RecRow->thumb_upload;
        if(file_exists($file_path) and !empty($RecRow->thumb_upload)) {
            
        $day = date("d", strtotime($RecRow->blog_date));
        $month = date("M", strtotime($RecRow->blog_date));
            $relistblog.='<div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="single-blog mb-60 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1s">
                        <div class="blog-thubmnail">
                            <a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">
                                <img src="'.IMAGE_PATH.'blog/thumb/'.$RecRow->thumb_upload.'" alt="'.$RecRow->title.'" style="width: 360px; height: 281px;">
                            </a>
                            <div class="blog-post">
                                <span class="post-day">
                                  '.$day.'
                                </span>
                                <span class="post-month">
                                   '.$month.'
                                </span>
                            </div>
                        </div>
                        <div class="blog-desc">
                            <h6><a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">'.$RecRow->title.'</a></h6>
                            <p'.substr($RecRow->brief, 0,50).' </p>
                            <div class="bolg-continue">
                                <a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">Continue Reading</a>
                            </div>
                        </div>
                    </div>
                </div>';
        }else{
           $relistblog.='<div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="single-blog mb-60 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1s">
                        <div class="blog-desc">
                            <h6><a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">'.$RecRow->title.'</a></h6>
                            <p'.substr($RecRow->brief, 0,50).' </p>
                            <div class="bolg-continue">
                                <a href="'.BASE_URL.'blogdetail/'.$RecRow->slug.'">Continue Reading</a>
                            </div>
                        </div>
                    </div>
                </div>'; 
        }
  }
  $relistblog.='</div>';
  if (!empty($year)) {                                              
            $relistblog .= get_front_pagination($total, $limit, $page, BASE_URL . 'blogs/' . $year);;
        } else {
            $relistblog .= get_front_pagination($total, $limit, $page, BASE_URL . 'blogs');
        }
 $relistblog.='</div>
    </div>';

}


$jVars['module:blog-list'] = $relistblog;


//blog detail page
$reblogdetail= $blogbread= '';

$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
    $detspRec = Blog::find_by_slug($slug);
if (!empty($detspRec)) {
    $day = date("d", strtotime($detspRec->blog_date));
    $month = date("M", strtotime($detspRec->blog_date));
        $reblogdetail.=' <article class="blog-details">
                            <div class="blog-thubmnail">';
                                if($detspRec->image){
                           $reblogdetail.='     <a href="#">
                                    <img src="'.IMAGE_PATH.'blog/'.$detspRec->image.'" alt="'.$RecRow->title.'" style="width: 750px;">
                                </a>';
                                }
                           $reblogdetail.='     <div class="blog-post">
                                    <span class="post-day">
                                      '.$day.'
                                    </span>
                                    <span class="post-month">
                                       '.$month.'
                                    </span>
                                </div>
                            </div>
                            <div class="article-desc bg-1">
                                <div class="post-title">
                                    <h4>'.$detspRec->title.'</h4>
                                </div>
                                <div class="post-content">
                                    '.$detspRec->content.'
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
                        
                        $blogbread .= '<div class="row">
                    <div class="col-md-12">
                        <div class="breadcrumbs-inner">
                            <div class="breadcrumbs-title text-center">
                                <h1>' . $detspRec->title . '</h1>
                            </div>
                            <div class="breadcrumbs-menu">
                                <ul>
                                    <li><a href="'.BASE_URL.'">Home /</a></li>
                                     <li><a href="'.BASE_URL.'blogs">Blogs /</a></li>
                                    <li>' . $detspRec->title . '</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>';
    
    }
        $jVars['module:blog-detail'] = $reblogdetail;

      $jVars['module:blog-bread'] = $blogbread;


$rerecentdetailblog='';

$Recordrecent = Blog::get_latestblog_by(4);
// var_dump($Records); die();
if(!empty($Recordrecent)) {
    $rerecentdetailblog.='<div class="recent-post-inner">';
    foreach($Recordrecent as $RecRowr) {   
        $file_path = SITE_ROOT.'images/blog/thumb/'.$RecRowr->thumb_upload;
        if(file_exists($file_path) and !empty($RecRowr->thumb_upload)) {
            
            $rerecentdetailblog.='<div class="single-recent-post fix">
                                        <div class="recent-post-thumbnail">
                                            <a href="'.BASE_URL.'blogdetail/'.$RecRowr->slug.'"><img src="'.IMAGE_PATH.'blog/thumb/'.$RecRowr->thumb_upload.'" alt="'.$RecRowr->title.'"></a>
                                        </div>
                                        <div class="recent-post-desc">
                                            <div class="post-title">
                                                <h6><a href="'.BASE_URL.'blogdetail/'.$RecRowr->slug.'">'.$RecRowr->title.'</a></h6>
                                            </div>
                                            <div class="post-publish">
                                                <p>'.$RecRowr->author.' / '.$RecRowr->blog_date.'</p>
                                            </div>
                                            <!-- <div class="post-content">
                                                 <p>Lorem must explain to ten how all this mistakenea </p>
                                            </div>-->
                                        </div>
                                    </div>';
        }
  }
 $rerecentdetailblog.='</div>';
}

$jVars['module:recent-detail-blog'] = $rerecentdetailblog;


$archiveblog = $year = '';
$sql = "SELECT blog_date FROM tbl_blog GROUP BY year(blog_date)";
$Recordarchive = Blog::find_by_sql($sql);
// var_dump($Recordarchive); die();
if(!empty($Recordarchive)) {
    $archiveblog.='<div class="archive-list">
                                    <ul>';
    foreach($Recordarchive as $RecRowa) {   
     $year = date('Y', strtotime($RecRowa->blog_date));
            $archiveblog.='<li><a href="' . BASE_URL . 'blogs/' . $year . '/page/1">'.date('Y', strtotime($RecRowa->blog_date)).'</a></li>';
        
  }
 $archiveblog.='</ul>
                                </div>';
}

$jVars['module:archive-detail-blog'] = $archiveblog;

?>