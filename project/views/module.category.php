<?php 
$current_url = pathinfo($_SERVER["PHP_SELF"]);
$pgSelf = $current_url['filename'];   
/* Speaker Display Home */
$reshome= '';
$homeRec = Category::homepageCategory();
if($homeRec){
    $reshome.='<div class="property-list">';
	foreach($homeRec as $RecRow) {
		 if($RecRow->image != "a:0:{}") { 
            $imageList = unserialize($RecRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT.'images/category/'.$imageList[$imgno];
            if(file_exists($file_path)) {
                $imglink = IMAGE_PATH.'category/'.$imageList[$imgno];
            }
        }
        $sql="SELECT COUNT(category) AS total FROM tbl_property WHERE category=$RecRow->id AND sold_out='0' AND ext_user_id='0'";
        $result=$db->fetch_array($db->query($sql));
        // print_r($imglink); die();
                 $reshome.='<div class="col-md-4">
                                    <div class="single-property">
                                        <div class="property-img">
                                            <a href="'.BASE_URL.'propcategory/'.$RecRow->slug.'">
                                                <img src="'.$imglink.'" alt="'.$RecRow->title.'">
                                            </a>
                                        </div>
                                        <div class="category-text">
                                            <h3><a href="'.BASE_URL.'propcategory/'.$RecRow->slug.'">'.$RecRow->title.'</a></h3>
                                             <a href="'.BASE_URL.'propcategory/'.$RecRow->slug.'"><p>'.$result["total"].' Properties</p>
                                            <div class="triangle-right"></div></a>
                                        </div>
                                    </div>
                                </div>';
     
    // print_r($reshome); die();
    }
 $reshome.='</div>';
}

$jVars['module:category-home'] = $reshome;


/* Property list Related Category */
$reslist= $innbred = '';
// echo "<pre>", print_r($_REQUEST['slug']); die();
if (defined('CATEGORY_PAGE') and isset($_REQUEST['slug'])) {
$slug = addslashes($_REQUEST['slug']);
$recRow = Category::find_by_slug($slug);
 
$sql = "SELECT *
        FROM tbl_property
        WHERE status='1' AND sold_out='0' AND category=$recRow->id AND ext_user_id='0'
        ORDER BY sortorder ASC ";

        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"]))? $_REQUEST["pageno"] : 1;
        $limit = 12;
        $total = $db->num_rows($db->query($sql));
        // print_r($total); die();
        $startpoint = ($page * $limit) - $limit; 
        $sql.=" LIMIT ".$startpoint.",".$limit;
        $query = $db->query($sql);
        $listRec=Property::find_by_sql($sql);

if($listRec){
    $reslist.='<div class="row">';
    foreach($listRec as $RecRow) {
         if($RecRow->image != "a:0:{}") { 
            $imageList = unserialize($RecRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT.'images/property/'.$imageList[$imgno];
            if(file_exists($file_path)) {
                $imglink = IMAGE_PATH.'property/'.$imageList[$imgno];
            }
        }
                 $reslist.='<div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="single-property wow fadeInUp mb-40" data-wow-delay="0.2s" data-wow-duration="1s">
                                    <span class="bg-blue">FOR SALE</span>
                                    <div class="property-img">
                                       <a href="'.BASE_URL.'detailproperty/'.$RecRow->slug.'"> <img src="'.$imglink.'" alt="'.$RecRow->title.'"></a>
                                    </div>
                                    <div class="property-desc">
                                <div class="property-desc-top">
                                    <h6><a href="'.BASE_URL.'detailproperty/'.$RecRow->slug.'">'.$RecRow->title.'</a></h6>
                                    <h4 class="price">NRs '.$RecRow->selling_price.'</h4>';
                                    
                                     $district = District::find_by_id($RecRow->district);
                                     if(isset($district)){
                                    $reslist.='<div class="property-location">
                                        <p><img src="'.BASE_URL.'template/cms/img/property/icon-5.png" alt="'.$RecRow->title.'"> '.$district->title.',Nepal</p>
                                    </div>';
                                     }
                            $reslist.='</div>
                                <div class="property-desc-bottom">
                                    <div class="property-bottom-list">
                                        <ul>';
                                        if($RecRow->land_area and $RecRow->land_area != '0.00 sqm'){
                                           $reslist.='  <li>
                                                <img src="'.BASE_URL.'template/cms/img/property/icon-1.png" alt="Land Icon">
                                                <span>'.$RecRow->land_area.'</span>
                                            </li>';
                                        }
                                         if($RecRow->bedroom){
                                            $reslist.=' <li>
                                                <img src="'.BASE_URL.'template/cms/img/property/icon-2.png" alt="Bedroom Icon">
                                                <span>'.$RecRow->bedroom.'</span>
                                            </li>';
                                         }
                                         if($RecRow->bathroom){
                                            $reslist.=' <li>
                                                <img src="'.BASE_URL.'template/cms/img/property/icon-3.png" alt="Bathroom Icon">
                                                <span>'.$RecRow->bathroom.'</span>
                                            </li>';
                                         }
                                        $reslist.=' </ul>
                                    </div>
                                </div>
                            </div>
                                </div>
                            </div>';
     
    }
 $reslist.='</div>';
  $url = BASE_URL.'propcategory/'.$recRow->slug;
  $reslist.=get_front_pagination($total, $limit, $page, $url);
}

$innbred .= '<div class="row">
                    <div class="col-md-12">
                        <div class="breadcrumbs-inner">
                            <div class="breadcrumbs-title text-center">
                                <h1>' . $recRow->title . '</h1>
                            </div>
                            <div class="breadcrumbs-menu">
                                <ul>
                                    <li><a href="'.BASE_URL.'">Home /</a></li>
                                    <li>' . $recRow->title . '</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>';

}
$jVars['module:property-list-by-category'] = $reslist;

$jVars['module:category-bread'] = $innbred;

?>

