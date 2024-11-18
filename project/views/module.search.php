<?php
$category=$district=$location=$price=$reshsearch=$actId='';
$actId= 0;

if(isset($_POST)){ foreach($_POST as $key=>$val){$$key=$val;}}
$actId= 0;	
$reshsearch.='<div class="row">
                    <div class="col-md-12">
                        <div class="find-home-title">
                            <!-- <h3>FIND YOUR DREAM HOME</h3> -->
                        </div>
                    </div>
                    <form action="'.BASE_URL.'searchlist" method="post">
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="find-home-item custom-select mb-40">                  
                                <select class="form-control " title="Property Type" data-hide-disabled="true" data-live-search="true" name="category">
                                    <optgroup>';
			        	$reshsearch.= Category::get_all_categorydata($category);
                                    
                               $reshsearch.='</optgroup>
                               </select>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="find-home-item custom-select">                  
                                <select class="form-control distaction" id="district" title="District" name="district" data-hide-disabled="true" data-live-search="true" selId="'.$district.'">
                                     <optgroup><option value="">Choose District</option>';

                                 $reshsearch.= District::get_all_districtdata($district);    
                                 // var_dump($reshsearch); die();  
                                 $reshsearch.='</optgroup>
                                </select>
                            </div> 
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="find-home-item custom-select">                  
                                <select class="form-control"  locationId" name="location" id="location" title="Search Location" data-hide-disabled="true" data-live-search="true">
                                     <optgroup>
                                     <option value="all">Choose Location</option>';     
                                 $reshsearch.='</optgroup>
                                </select>
                            </div> 
                        </div>';
       
        $maxsql = "SELECT MAX(selling_price) as max FROM tbl_property WHERE sold_out=0 AND ext_user_id='0'";
        $maxquery=$db->query($maxsql);
        $maxprice = $db->fetch_array($maxquery);
    
    $minsql = "SELECT MIN(selling_price) as min FROM tbl_property WHERE sold_out=0 AND ext_user_id='0'";
        $minquery=$db->query($minsql);
        $minprice = $db->fetch_array($minquery);
        // var_dump($minprice['min']); die();
                       $reshsearch.=' <div class="col-md-4 col-sm-4 col-xs-12">
                                    <div class="find-home-item">
                                        <!-- shop-filter -->
                                        <div class="shop-filter">
                                        <input type="hidden" id="maxprice" value="'.$maxprice['max'].'"/>
                                        <input type="hidden" id="minprice" value="'.$minprice['min'].'"/>
                                            <div class="price_filter">
                                                <div class="price_slider_amount">
                                                    <input type="submit"  value="Price Range"/> 
                                                    <input type="text" id="amount" name="price"  placeholder="Add Your Price" /> 
                                                </div>
                                                <div id="slider-range"></div>
                                            </div>
                                        </div>
                                    </div>
                        </div>';
                       $reshsearch.=' <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="find-home-item">
                                       <button type="submit">SEARCH PROPERTY </button>
                                    </div>
                        </div>
                    </form>
                </div>';

$jVars['module:home-searchform'] = $reshsearch;
/* End Home search form */


//Detail page search form
 $detailsearch='';
$detailsearch.='<div class="find_home-box-inner">
                                    <form action="'.BASE_URL.'searchlist" method="post">
                                        <div class="find-home-cagtegory">
                                            <div class="row">

                                            <div class="col-md-6">
                                            <div class="find-home-item">
                                                <select class="selectpicker" title="Property Type" data-hide-disabled="true" data-live-search="true" name="category">
                                    <optgroup>';
                        $detailsearch.= Category::get_all_categorydata($category);
                                    
                               $detailsearch.='</optgroup>
                               </select>
                                            </div>
                                        </div>

                                                <div class="col-md-6">
                                                    <div class="find-home-item custom-select ">                  
                                             <select class="selectpicker distaction" id="district" title="District" name="district" data-hide-disabled="true" data-live-search="true" selId="'.$district.'">
                                     <optgroup><option value="">Choose District</option>';

                                 $detailsearch.= District::get_all_districtdata($district);    
                                 // var_dump($reshsearch); die();  
                                $detailsearch.='</optgroup>
                                </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="find-home-item custom-select">                  
                                                   <select class="form-control"  locationId" name="location" id="location" title="Location" data-hide-disabled="true" data-live-search="true">
                                     <optgroup>
                                     <option value="all">Choose Location</option>';     
                                 $detailsearch.='</optgroup>
                                </select>
                                            </div> 
                                        </div>

                                        <div class="find-home_bottom">
                                            <div class="col-md-12">
                                                <div class="find-home-item">
                                                 <button type="submit">SEARCH PROPERTY </button>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </form>
                     </div>';

$jVars['module:detail-searchform'] = $detailsearch;                                                   
                                                   
                                                           
$resproplist='';
if(defined('SEARCH_PAGE')){ 
  global $db;
    $sql = "SELECT prop.title, prop.slug, prop.land_area, prop.bedroom, prop.property_type, prop.selling_price , prop.bathroom, prop.image, prop.parking_spot, prop.district,
            cat.title as category_title
            FROM tbl_property  prop 
            INNER JOIN tbl_category cat
            WHERE prop.category = cat.id AND ext_user_id='0'";
// echo $category; die();
    if($category!='all' and !empty($category)){
        $sql.= " AND prop.category = $category";
    }

    if($district!='all' and !empty($district)){
        $sql.= " AND prop.district = $district";
    }
    if($location!='all' and !empty($location)){
        $sql.=" AND prop.location = $location";
    }

    $sql.=" AND prop.status='1' AND prop.sold_out='0' ORDER BY prop.sortorder DESC ";

    $res = $db->query($sql);
    $total = $db->affected_rows($res);
    // var_dump($total); die();
    if($total>0){
         $resproplist.='<div class="row">';
        while($RecRow= $db->fetch_array($res)){
//   var_dump($RecRow); die();
            if($RecRow['image'] != "a:0:{}") { 
            $imageList = unserialize($RecRow['image']);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT.'images/property/'.$imageList[$imgno];
            if(file_exists($file_path)) {
                $imglink = IMAGE_PATH.'property/'.$imageList[$imgno];
            }
        }
       
                 $resproplist.='<div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="single-property wow fadeInUp mb-40" data-wow-delay="0.2s" data-wow-duration="1s">
                                    <span class="bg-blue">FOR '.$RecRow['property_type'].'</span>
                                    <div class="property-img">
                                       <a href="'.BASE_URL.'detailproperty/'.$RecRow['slug'].'"> <img src="'.$imglink.'" alt="'.$RecRow['title'].'"></a>
                                    </div>
                                    <div class="property-desc">
                                <div class="property-desc-top">
                                    <h6><a href="'.BASE_URL.'detailproperty/'.$RecRow['slug'].'">'.$RecRow['title'].'</a></h6>
                                    <h4 class="price">Rs.'.$RecRow['selling_price'].'</h4>';
                                    $dist = District::find_by_id($RecRow['district']);
                                    if(isset($dist->title)){
                                  $resproplist.='  <div class="property-location">
                                        <p><img src="'.BASE_URL.'/template/cms/img/property/icon-5.png" alt="prop temp"> '.$dist->title.'</p>
                                    </div>';
                                    }
                             $resproplist.='   </div>
                                <div class="property-desc-bottom">
                                    <div class="property-bottom-list">
                                        <ul>';
                                        if($RecRow['land_area']){
                                            $resproplist.=' <li>
                                                <img src="'.BASE_URL.'/template/cms/img/property/icon-1.png" alt="land area icon">
                                                <span>'.$RecRow['land_area'].'</span>
                                            </li>';
                                        }
                                        if($RecRow['bedroom']){
                                            $resproplist.=' <li>
                                                <img src="'.BASE_URL.'/template/cms/img/property/icon-2.png" alt="bedroom img">
                                                <span>'.$RecRow['bedroom'].'</span>
                                            </li>';
                                            }
                                            if($RecRow['bathroom']){
                                            $resproplist.=' <li>
                                                <img src="'.BASE_URL.'/template/cms/img/property/icon-3.png" alt="bathroom icon">
                                                <span>'.$RecRow['bathroom'].'</span>
                                            </li>';
                                            }
                                        $resproplist.=' </ul>
                                    </div>
                                </div>
                            </div>
                                </div>
                            </div>';
            }
        }
        $resproplist.='</div>';
    }else{
        $resproplist.='<div class="col-xs-12 col-sm-6 col-md-4">No Result Found</div>';
    }

$jVars['module:property-searchlist'] = $resproplist;

?>