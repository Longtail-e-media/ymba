<?php 
$rescont='';
if(defined('SERVICES_PAGE')) {
        $record = Services::getservice_list();

        if(!empty($record)) {
            foreach($record as $recRow) {
                   if ($recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);   
            $file_path = SITE_ROOT . 'images/services/' . $imageList[0];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'services/' . $imageList[0];
            } else {
                $imglink = BASE_URL . 'template/cms/img/welcome/1.jpg';
            }
        } 
            if($recRow->id % 2 == 0){
                     $rescont.='<div class="service-right">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class=" fadeInRight wow" data-wow-delay="0.2s">
                                <img src="'.$imglink.'" alt="'.$recRow->title.'">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 welcome-pd fadeInLeft wow" data-wow-delay="0.2s">
                            <div class="welcome-title">
                                <!--<h3 class="title-1"><span>sale</span> PROPERTY</h3>-->
                                <h4 class="title-2">'.$recRow->title.'</h4>
                            </div>';
        $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content)); 
        $content = $content[0];
                          $rescont.='  <div class="welcome-content ">
                                <p>'.$content.'.</p>
                                <p class="text-2"><a href="' . BASE_URL . 'service/' . $recRow->slug . '"><button type="button" class="btn btn-warning">View More</button></a></p>
                            </div>
                        </div>
                    </div>';
}else{
       $rescont.='<div class="service-left">
                        <div class="col-md-6 col-sm-12 welcome-pd fadeInLeft wow" data-wow-delay="0.2s">
                            <div class="welcome-title">
                                <!--<h3 class="title-1"><span>sale</span> PROPERTY</h3>-->
                                <h4 class="title-2">'.$recRow->title.'</h4>
                            </div>';
        $content1 = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content)); 
        $content1 = $content1[0];  
                             $rescont.='<div class="welcome-content ">
                                <p>'.$content1.'.</p>
                                 <p class="text-2"><a href="' . BASE_URL . 'service/' . $recRow->slug . '"><button type="button" class="btn btn-warning">View More</button></a></p>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="welcome-haven-img fadeInRight wow" data-wow-delay="0.2s">
                                <img src="'.$imglink.'" alt="'.$recRow->title.'">
                            </div>
                        </div>
                    </div>';
   
}
        }
                
        }
}

$jVars['module:service-list'] = $rescont;


$servicedetail=$servicebread='';
if(defined('SERVICE_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Services::find_by_slug($slug);
    if(!empty($recRow)) {
   if ($recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);   
            $file_path = SITE_ROOT . 'images/services/' . $imageList[0];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'services/' . $imageList[0];
            } else {
                $imglink = BASE_URL . 'template/cms/img/welcome/1.jpg';
            }
        } 
        $servicedetail.=' <div class="col-md-12 col-sm-12 welcome-pd agent">
                        <div class="welcome-title">
                            <!--<h3 class="title-1"><span>MEET</span> OUR</h3>-->
                            <h4 class="title-2">'.$recRow->title.'</h4>
                        </div>
                        <div class="welcome-content">
                            <p>'.$recRow->content.'</p>
                        </div>
                    </div>';
                    // <div class="col-md-5 col-sm-12 col-xs-12">
                    //     <div class="welcome-haven-img">
                    //         <img src="'.$imglink.'" alt="'.$recRow->title.'">
                    //     </div>
                    // </div>
                    
                    $servicebread .= '<div class="row">
                    <div class="col-md-12">
                        <div class="breadcrumbs-inner">
                            <div class="breadcrumbs-title text-center">
                                <h1>' . $recRow->title . '</h1>
                            </div>
                            <div class="breadcrumbs-menu">
                                <ul>
                                    <li><a href="'.BASE_URL.'">Home /</a></li>
                                     <li><a href="'.BASE_URL.'services">Service /</a></li>
                                    <li>' . $recRow->title . '</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>';
       
    }  
}
$jVars['module:service-detail']= $servicedetail;
$jVars['module:service-bread'] = $servicebread;

?>