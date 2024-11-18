<?php
$resinndetail = $innbred = '';

if (defined('MEMBER_LIST')) {
    $recRows = Member::find_all();
    // pr($recRows,1);
    if (!empty($recRows)) {
        foreach($recRows as $recRow){
        $images = unserialize($recRow->banner);
        // pr($images,1);
        $file_path = SITE_ROOT . 'images/member/banner/' . @$images[0];
        $img = (file_exists($file_path) AND !empty($images[0])) ? IMAGE_PATH . 'member/banner/' . @$images[0] : BASE_URL . 'template/cms/images/default-media-event-detail-banner.jpg';
        

        // pr($img);

            $resinndetail .='
            <div class="col-md-4">
                <div class="team-inner1">
                    <a href="'.BASE_URL.'member/'. $recRow->slug .'">
                        <div class="team-inner-img">
                            <img src="'. $img .'">
                        </div>
                        <h5>'. $recRow->title .'</h5>
                        <h6>'. $recRow->sub_title .'</h6>
                    </a>
                </div>
            </div>';
    }
    } 

}

$jVars['module:member-list'] = $resinndetail;



$resinndetail = $innbred = '';

if (defined('MEMBER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Member::find_by_slug($slug);
    // pr($recRow);

    if (!empty($recRow)) {
        $images = unserialize($recRow->banner);
        $file_path = SITE_ROOT . 'images/member/banner/' . @$images[0];
        $img = (file_exists($file_path) AND !empty($images[0])) ? IMAGE_PATH . 'member/banner/' . @$images[0] : BASE_URL . 'template/cms/images/default-media-event-detail-banner.jpg';
 


        $resinndetail .='
                        <div class="profile-detail">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="team-inner1">
                                            <div class="team-inner-img">
                                                <img src="'. $img .'">
                                            </div>
                                            <h5>'. $recRow->title .'</h5>
                                            <h6>'. $recRow->sub_title .'</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-8">
                                        '. $recRow->content .'
                                    </div>
                                </div>
                            </div>
                        </div>';

    } 

}
$jVars['module:member-detail'] = $resinndetail;

?>