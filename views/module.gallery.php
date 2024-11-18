<?php

/**
 * Home Gallery
 */

$home_gallery = '';

if (defined('HOME_PAGE')) {
    $homeImages = GalleryImage::getImagelist_by(14);
    if (!empty($homeImages)) {
        foreach ($homeImages as $homeImage) {
            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $homeImage->image;
            if (file_exists($file_path)) {
                $home_gallery .= '
                    <div class="post">
                        <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $homeImage->image . '" data-lightbox="roadtrip">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $homeImage->image . '" alt="' . $homeImage->title . '">
                        </a>
                    </div>
                ';
            }
        }
    }
}

$jVars['module:home-gallery'] = $home_gallery;


/**
 *  Image Gallery
 */

$gall_bread = $gallery_list = '';
if (defined('GALLERY_PAGE')) {
    if (!empty($_REQUEST['slug'])) {
        $slug = addslashes($_REQUEST['slug']);
        $galleryCategory = Gallery::find_by_slug($slug);
        if (!empty($galleryCategory)) {
            $gall_bread.='<h2>'.$galleryCategory->title.'</h2>';
            $galleryImages = GalleryImage::getImagelist_by($galleryCategory->id);
            if (!empty($galleryImages)) {
                $gallery_list .= '<div class="projects row" id="lightgallery">';
                foreach ($galleryImages as $galleryImage) {
                    $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $galleryImage->image;
                    if (file_exists($file_path)) {
                        $gallery_list .= '
                            <div class="col-xs-12 col-sm-6 col-lg-3 item ' . $galleryCategory->slug . '" 
                                data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $galleryImage->image . '" 
                                data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $galleryImage->image . '" 
                                data-sub-html="<h4>' . $galleryImage->title . '</h4>">
                                <a href="">
                                    <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $galleryImage->image . '" alt="' . $galleryImage->title . '" class="img-fluid">
                                </a>
                            </div>
                        ';
                    }
                }
                $gallery_list .= '</div>';
            }
        }
    } else {
        $galleryCategories = Gallery::getGallery();
        $gall_bread.='<h2>Photo Gallery</h2>';
        if (!empty($galleryCategories)) {
            $gallery_list .= '<div class="row">';
            foreach ($galleryCategories as $galleryCategory) {
                $file_path = SITE_ROOT . 'images/gallery/' . $galleryCategory->image;
                if (file_exists($file_path)) {
                    $gallery_list .= '
                            <div class="col-xs-12 col-sm-6 col-lg-3 item">
                                <a href="' . BASE_URL . 'gallery/' . $galleryCategory->slug . '">
                                    <img src="' . IMAGE_PATH . 'gallery/' . $galleryCategory->image . '" alt="' . $galleryCategory->title . '" class="img-fluid">
                                </a>
                                <div class="gallery_caption"><a href="' . BASE_URL . 'gallery/' . $galleryCategory->slug . '">' . $galleryCategory->title . '</a></div>
                            </div>
                        ';
                }
            }
            $gallery_list .= '</div>';
        }
    }
}


$jVars['module:gallery-bread'] = $gall_bread;
$jVars['module:gallery-list'] = $gallery_list;


/**
 *  Gallery sub page
 */
 $gall_bread = $gallery_list = '';
if(defined('GALLERY_DETAIL_PAGE')){
    if (!empty($_REQUEST['slug'])) {
        $slug = addslashes($_REQUEST['slug']);
        $galleryCategory = Gallery::find_by_slug($slug);
        if (!empty($galleryCategory)) {
            $gall_bread.='<h2>'.$galleryCategory->title.'</h2>';
            $galleryImages = GalleryImage::getImagelist_by($galleryCategory->id);
            if (!empty($galleryImages)) {
                $gallery_list .= '<div class="row" id="lightgallery">';
                foreach ($galleryImages as $galleryImage) {
                    $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $galleryImage->image;
                    if (file_exists($file_path)) {
                        $gallery_list .= '
                            <div class="col-xs-12 col-sm-6 col-lg-3 item ' . $galleryCategory->slug . '" 
                                data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $galleryImage->image . '" 
                                data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $galleryImage->image . '" 
                                data-sub-html="<h4>' . $galleryImage->title . '</h4>">
                                <a href="">
                                    <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $galleryImage->image . '" alt="' . $galleryImage->title . '" class="img-fluid">
                                </a>
                            </div>
                        ';
                    }
                }
                $gallery_list .= '</div>';
            }
        }
    }else{
        redirect_to(BASE_URL.'gallery');
    }
}
$jVars['module:gallery-detail-bread'] = $gall_bread;
$jVars['module:gallery-detail-list'] = $gallery_list;


/**
 * Video Gallery
 */

$video_gallery = '';

$videos = Video::find_all();
if (!empty($videos)) {
    foreach ($videos as $video) {
        $video_gallery .= '
            <div class="col-md-4 mb-4">
                <a class="venobox" data-autoplay="true" data-vbtype="video" href="' . $video->source . '"
                   target="_blank" data-gall="myGallery">
                    <div class="video" style="background-image: url(' . $video->thumb_image . ')">
                        <i class="fas fa-play-circle"></i>
                    </div>
                </a>
                <span>' . $video->title . '</span>
            </div>
        ';
    }
}
$jVars['module:video-gallery'] = $video_gallery;
?>


