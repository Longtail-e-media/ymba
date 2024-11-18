<link href="<?php echo ASSETS_PATH; ?>uploadify/uploadify.css" rel="stylesheet" type="text/css"/>

<?php

$moduleTablename = "tbl_property"; // Database table name
$moduleId = 29;                // module id >>>>> tbl_modules
$moduleFoldername = "property";        // Image folder name
$payment_type = array('Free' => 'Free', 'Payment' => 'Payment');
// $expire_on= array('1 Month'=>'1 Month', '2 Months'=>'2 Months', '3 Months'=>'3 Months', '4 Months'=>'4 Months', '5 Months'=>'5 Months', '6 Months'=>'6 Months');
$property_type= array('Sale'=>'Sale', 'Rent'=>'Rent');
$main_road = array('Yes'=>'Yes', 'No'=>'No');
$furnished= array('Semi-furnished'=>'Semi-furnished', 'Full furnished'=>'Full furnished', 'N/A'=>'N/A');
$structure_style= array('RCC'=>'RCC', 'Wall system'=>'Wall system', 'Others'=>'Others');
$road_access= array('Black topped'=>'Black topped', 'Gravelled'=>'Gravelled', 'Goreto Bato'=>'Goreto Bato', 'Others'=>'Others');
$property_status= array('Under Construction'=>'Under Construction', 'Ready in 2-3 Months'=>'Ready in 2-3 Months', 'Ready to Move'=>'Ready to Move', 'Ready afte a year'=>'Ready after a year');
$electricity = array('Yes'=>'Yes', 'No'=>'No');
$drinking_water_supply = array('Yes'=>'Yes', 'No'=>'No');
$sewage = array('Yes'=>'Yes', 'No'=>'No');
$cable_line = array('Yes'=>'Yes', 'No'=>'No');
$telecommunication = array('Yes'=>'Yes', 'No'=>'No');
$guard_house = array('Yes'=>'Yes', 'No'=>'No');
$under_ground_water_tank = array('Yes'=>'Yes', 'No'=>'No');
$solar_water_heater = array('Yes'=>'Yes', 'No'=>'No');

 if (isset($_GET['page']) && $_GET['page'] == "property" && isset($_GET['mode']) && $_GET['mode'] == "list"):
	SerclearImages($moduleTablename, $moduleFoldername); 
	SerclearImages($moduleTablename, $moduleFoldername."/thumbnails");
 ?>

 <h3>
         List Property
        <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);"
           onClick="AddNewProperty();">
    <span class="glyph-icon icon-separator">
    	<i class="glyph-icon icon-plus-square"></i>
    </span>
            <span class="button-content"> Add New </span>
        </a>
    </h3>
    <div class="my-msg"></div>
    <div class="example-box">
        <div class="example-code">
            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
                <thead>
                <tr>
                    <th style="display:none;"></th>
                    <th class="text-center"><input class="check-all" type="checkbox"/></th>
                    <th class="text-center">Property Name</th>
                    <th class="text-center">Category</th>
                    <th class="text-center">Property By</th>
                    <th class="text-center">Property Images</th>
                   
                    <th class="text-center"><?php echo $GLOBALS['basic']['action']; ?></th>
                </tr>
                </thead>

   <tbody>
                <?php $records = Property::find_by_sql("SELECT * FROM " . $moduleTablename . " ORDER BY sortorder DESC ");
                foreach ($records as $key => $record): ?>
                <?php  
                if($record->category){
                    $category=Category::find_by_id($record->category); 
                }else{
                    $category=Category::find_by_id(14);  
                }
                ?>
                    <tr id="<?php echo $record->id; ?>">
                        <td style="display:none;"><?php echo $key + 1; ?></td>
                        <td><input type="checkbox" class="bulkCheckbox" bulkId="<?php echo $record->id; ?>"/></td>
                        <td>
                            <div class="col-md-7">
                                <a href="javascript:void(0);" onClick="editRecord(<?php echo $record->id; ?>);"
                                   class="user-ico clearfix"
                                   title="<?php echo $record->title; ?>"><?php echo $record->title; ?></a>
                            </div>
                        </td>
                        <td><?php echo $category->title; ?></td>
                        <td>
                            <?php if($record->ext_user_id == '0'){ ?>
                            <div class="col-md-7">
                               <?php echo "BPS Property"; ?>
                            </div>
                            <?php }else{ ?>
                              <div class="col-md-7">
                               <?php echo "Users Property"; ?>
                            </div>
                          <?php } ?>
                        </td>
                        <td>
                            <a class="primary-bg medium btn loadingbar-demo" title=""
                               onClick="viewpropertyimagelist(<?php echo $record->id; ?>);" href="javascript:void(0);">
                        <span class="button-content">
                            <span class="badge bg-orange radius-all-4 mrg5R" title=""
                                  data-original-title="Badge with tooltip"><?php echo $countImages = PropertyImage::getTotalImages($record->id); ?></span>
                            <span class="text-transform-upr font-bold font-size-11">View  Lists</span>
                        </span>
                            </a>
                        </td>

                        <td class="text-center">
                            <?php
                            $statusImage = ($record->status == 1) ? "bg-green" : "bg-red";
                            $statusText = ($record->status == 1) ? $GLOBALS['basic']['clickUnpub'] : $GLOBALS['basic']['clickPub'];
                            ?>
                            <a href="javascript:void(0);"
                               class="btn small <?php echo $statusImage; ?> tooltip-button statusToggler"
                               data-placement="top" title="<?php echo $statusText; ?>"
                               status="<?php echo $record->status; ?>" id="imgHolder_<?php echo $record->id; ?>"
                               moduleId="<?php echo $record->id; ?>">
                                <i class="glyph-icon icon-flag"></i>
                            </a>
                            <a href="javascript:void(0);" class="loadingbar-demo btn small bg-blue-alt tooltip-button"
                               data-placement="top" title="Edit" onclick="editRecord(<?php echo $record->id; ?>);">
                                <i class="glyph-icon icon-edit"></i>
                            </a>
                            <a href="javascript:void(0);" class="btn small bg-red tooltip-button" data-placement="top"
                               title="Remove" onclick="recordDelete(<?php echo $record->id; ?>);">
                                <i class="glyph-icon icon-remove"></i>
                            </a>
                            <input name="sortId" type="hidden" value="<?php echo $record->id; ?>">
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
             </div>
        <div class="pad0L col-md-2">
            <select name="dropdown" id="groupTaskField" class="custom-select">
                <option value="0"><?php echo $GLOBALS['basic']['choseAction']; ?></option>
                <option value="delete"><?php echo $GLOBALS['basic']['delete']; ?></option>
                <option value="toggleStatus"><?php echo $GLOBALS['basic']['toggleStatus']; ?></option>
            </select>
        </div>
        <a class="btn medium primary-bg" href="javascript:void(0);" id="applySelected_btn">
        <span class="glyph-icon icon-separator float-right">
          <i class="glyph-icon icon-cog"></i>
        </span>
            <span class="button-content"> Click </span>
        </a>
    </div>
    <?php elseif (isset($_GET['mode']) && $_GET['mode'] == "addEdit"):
    if (isset($_GET['id']) && !empty($_GET['id'])):
        $propertyId = addslashes($_REQUEST['id']);
        $propertyInfo = Property::find_by_id($propertyId);
        $status = ($propertyInfo->status == 1) ? "checked" : " ";
        $unstatus = ($propertyInfo->status == 0) ? "checked" : " ";
        $featured = ($propertyInfo->featured == 1) ? "checked" : " ";
        $sold_out = ($propertyInfo->sold_out == 1) ? "checked" : " ";
        
        $swimming = ($propertyInfo->swimming == 1) ? "checked" : " ";
        $security = ($propertyInfo->security == 1) ? "checked" : " ";
        $gym_hall = ($propertyInfo->gym_hall == 1) ? "checked" : " ";
        $elevator_or_lift = ($propertyInfo->elevator_or_lift == 1) ? "checked" : " ";
        
        
      


        
    endif;
    ?>
          <h3>
        <?php echo (isset($_GET['id'])) ? 'Edit Property' : 'Add Property'; ?>
        <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);"
           onClick="viewpropertylist();">
    <span class="glyph-icon icon-separator">
    	<i class="glyph-icon icon-arrow-circle-left"></i>
    </span>
            <span class="button-content"> Back </span>
        </a>
    </h3>                  
        <div class="my-msg"></div>
    <div class="example-box">
        <div class="example-code">
            <form action="" class="col-md-12 center-margin" id="property_frm">
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Property:
                        </label>
                    </div>
                    <div class="form-input col-md-20">
                        <input placeholder="Title" class="col-md-6 validate[required,length[0,200]]" type="text"
                               name="title" id="title"
                               value="<?php echo !empty($propertyInfo->title) ? $propertyInfo->title : ""; ?>">
                    </div>
                </div>
                 <div class="form-row add-image">
                    <div class="form-label col-md-2">
                        <label for="">
                            Image :
                        </label>
                    </div>
                    <div class="form-input col-md-10 uploader">
                        <input type="file" name="gallery_upload" id="gallery_upload" class="transparent no-shadow">
                        <label>
                            <small>Image Dimensions (<?php echo Module::get_properties($moduleId, 'imgwidth'); ?> px
                                X <?php echo Module::get_properties($moduleId, 'imgheight'); ?> px)
                            </small>
                        </label>
                    </div>
                    <!-- Upload user image preview -->
                    <div id="preview_Image"><input type="hidden" name="imageArrayname[]"/></div>
                    <?php
                    if (!empty($propertyInfo->image)) {
                        $imgRec = unserialize($propertyInfo->image);
                        if (is_array($imgRec)) {
                            foreach ($imgRec as $key => $recimg) {
                                $deleteid = rand(0, 99999);
                                $imagePath = SITE_ROOT . 'images/property/' . $recimg;
                                if (file_exists($imagePath)) { ?>
                                    <div class="col-md-3" id="removeSavedimg<?php echo $deleteid; ?>">
                                        <div class="infobox info-bg">
                                            <div class="button-group" data-toggle="buttons">
                                                <span class="float-left">
                                                    <?php
                                                    if (file_exists(SITE_ROOT . "images/property/" . $recimg)):
                                                        $filesize = filesize(SITE_ROOT . "images/property/" . $recimg);
                                                        echo 'Size : ' . getFileFormattedSize($filesize);
                                                    endif;
                                                    ?>
                                                </span>
                                                <a class="btn small float-right" href="javascript:void(0);"
                                                   onclick="deleteSavedPropertyimage(<?php echo $deleteid; ?>);">
                                                    <i class="glyph-icon icon-trash-o"></i>
                                                </a>
                                            </div>
                                            <img src="<?php echo IMAGE_PATH . 'property/thumbnails/' . $recimg; ?>"
                                                 style="width:100%"/>
                                            <input type="hidden" name="imageArrayname[]" value="<?php echo $recimg; ?>"
                                                   class="validate[required,length[0,250]]"/>
                                        </div>
                                    </div>
                                <?php }
                            }
                        }
                    } ?>
                </div>
               
                <div class="form-row menu-position">
                <div class="form-label col-md-2">
                    <label>Category :</label>
                </div>
                <div class="form-input col-md-4">
                    <select data-placeholder="None" name="category" class="chosen-select validate[required]" id="category" onchange="hideField('hidden_field', this)">
                        <option value="">Choose</option>
                       

                        <?php $sql = "SELECT id, title FROM tbl_category WHERE status='1' ORDER BY sortorder ASC";
                        $category = Category::find_by_sql($sql); 
                        if(!empty($category)) {

                            $result.='<option>';
                            foreach($category as $categoryRow) {
                                

                                $sel = (!empty($propertyInfo->category) and $propertyInfo->category==$categoryRow->id) ?'selected':'';
                                $result.='<option value="'.$categoryRow->id.'" '.$sel.'>'.$categoryRow->title.'</option>';
                            }
                            $result.='</option>'; 
                        }
                        echo $result; ?>

                    </select>
                </div>
                <div class="form-label col-md-2">
                        <label for="">
                            Property For :
                        </label>
                    </div>
                 <div class="form-input col-md-4">
                        <select data-placeholder="None" class="chosen-select validate[required]" id="property_type" name="property_type">
                            <option value="">Choose</option>
                             <?php foreach ($property_type as $key => $val) {
                                $sel=(!empty($propertyInfo->property_type) and $propertyInfo->property_type==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$sel.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
            </div>
                 
                   
				<div class="form-row">
                    <div class="form-label col-md-12">
                        <label for="">
                            Content :
                        </label>
                        <textarea name="content" id="content"
                                  class="large-textarea validate[required]">
                            <?php echo !empty($propertyInfo->content) ? $propertyInfo->content : ""; ?></textarea>
                        <a class="btn medium bg-orange mrg5T" title="Read More" id="readMore"
                           href="javascript:void(0);">
                            <span class="button-content">Read More</span>
                        </a>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-label col-md-12">
                        <label for="">
                            Excerpt :
                        </label>
                        <textarea name="excerpt" id="excerpt"><?php echo !empty($propertyInfo->excerpt) ? $propertyInfo->excerpt : ""; ?></textarea>
                        
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-checkbox-radio col-md-9">
                        <input type="checkbox" class="custom-radio" name="featured" 
                               value="1" <?php echo !empty($featured) ? $featured : " ";?>>
                        <label for="">Featured</label>
                       
                         <input type="checkbox" class="custom-radio" name="sold_out" value="1"<?php echo !empty($sold_out) ? $sold_out : " "; ?>>
                            <label for="">Sold Out</label>
                    </div>
                </div>
            
            <div class="form-row">
                <div class="menu-position">
                    <div class="form-label col-md-2">
                        <label for="">
                            Payment Type :
                        </label>
                    </div>
                    <div class="form-input col-md-4">
                        <select data-placeholder="None" class="chosen-select validate[required]" id="payment_type" name="payment_type">
                            <option value="">Choose</option>
                             
                              <?php foreach ($payment_type as $key => $val) {
                                $sel = (!empty($propertyInfo->payment_type) and $propertyInfo->payment_type == $key) ? 'selected' : '';
                                echo '<option value="' . $key . '" ' . $sel . '>' . $val . '</option>';
                            } ?>
                            
                        </select>
                    </div>
                </div>
                <div class="menu-position">
                    <div class="form-label col-md-2">
                        <label for="">
                            Expire On :
                        </label>
                    </div>
                 <div class="form-input col-md-4">
                        <select data-placeholder="None" class="chosen-select validate[required]" id="expire_on" name="expire_on">
                            <option value="">Choose</option>
                            <?php 
                                        $date= date('Y-m-d');
                                        $date1 = date("Y-m-d", strtotime("+1 months"));
                                        $date2 = date("Y-m-d", strtotime("+2 months"));
                                        $date3 = date("Y-m-d", strtotime("+3 months"));
                                        $date4 = date("Y-m-d", strtotime("+4 months"));
                                        $date5 = date("Y-m-d", strtotime("+5 months"));
                                        $date6 = date("Y-m-d", strtotime("+6 months"));
                                        if (($propertyInfo->expire_on > $date) && ($propertyInfo->expire_on <= $date1)){
                                        echo '<option value="+1 months" selected>1 Month</option>';
                                       }else{
                                         echo '<option value="+1 months">1 Month</option>';
                                       }
                                        if (($propertyInfo->expire_on > $date1) && ($propertyInfo->expire_on <= $date2)){
                                         echo '<option value="+2 months" selected>2 Months</option>';
                                      }else{
                                        echo '<option value="+2 months">2 Months</option>';
                                      }
                                      if (($propertyInfo->expire_on > $date2) && ($propertyInfo->expire_on <= $date3)){
                                         echo '<option value="+3 months" selected>3 Months</option>';
                                      }else{
                                        echo '<option value="+3 months">3 Months</option>';
                                      }
                                      if (($propertyInfo->expire_on > $date3) && ($propertyInfo->expire_on <= $date4)){
                                          echo '<option value="+4 months" selected>4 Months</option>';
                                      }else{
                                        echo '<option value="+4 months">4 Months</option>';
                                      }
                                      if (($propertyInfo->expire_on > $date4) && ($propertyInfo->expire_on <= $date5)){
                                          echo '<option value="+5 months" selected>5 Months</option>';
                                      }else{
                                         echo '<option value="+5 months">5 Months</option>';
                                      }
                                      if (($propertyInfo->expire_on > $date5) && ($propertyInfo->expire_on <= $date6)){
                                          echo '<option value="+6 months" selected>6 Months</option>';
                                      }else{
                                        echo '<option value="+6 months">6 Months</option>';
                                      }
                            ?>

                 
                        </select>
                    </div>
                </div>
            </div>
            
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Landline No. :
                        </label>
                    </div>
                    <div class="form-input col-md-4">
                        <input placeholder="Landline Number" class="col-md-6" type="text"
                               name="call_us" id="call_us"
                               value="<?php echo !empty($propertyInfo->call_us) ? $propertyInfo->call_us : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Mobile No. :
                        </label>
                    </div>
                    <div class="form-input col-md-4">
                        <input placeholder="Mobile Number" class="col-md-6 validate[required,length[0,200]]" type="text"
                               name="call_us_mobile" id="call_us_mobile"
                               value="<?php echo !empty($propertyInfo->call_us_mobile) ? $propertyInfo->call_us_mobile : ""; ?>">
                    </div>
                </div>
                <div class="form-row">
                <div class="form-label col-md-2">
                    <label>Province :</label>
                </div>
                <div class="form-input col-md-2">
                    <select name="province" class="validate[required]" id="province" required>
                        <option value="">Choose</option>

                        <?php $provinces = Province::getProvinces(); 
                        if(!empty($provinces)) {
                            foreach($provinces as $provinceRow) {
                                $sel = (!empty($propertyInfo->province) and $propertyInfo->province==$provinceRow->id) ?'selected':'';
                                $result1.='<option value="'.$provinceRow->id.'" '.$sel.'>'.$provinceRow->title.'</option>';
                            } 
                        }
                        echo $result1; ?>

                    </select>
                </div>
                <div class="form-label col-md-2">
                    <label>District :</label>
                </div>
                <div class="form-input col-md-2">
                    <select name="district" class="validate[required]" id="district" required>
                        <option value="">Choose</option>

                        <?php $sql = "SELECT id, title FROM tbl_district WHERE status='1' ORDER BY sortorder ASC";
                        $district = District::find_by_sql($sql); 
                        if(!empty($district)) {
                            foreach($district as $districtRow) {
                                $sel = (!empty($propertyInfo->district) and $propertyInfo->district==$districtRow->id) ?'selected':'';
                                $result2.='<option value="'.$districtRow->id.'" '.$sel.'>'.$districtRow->title.'</option>';
                            } 
                        }
                        echo $result2; ?>

                    </select>
                </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Municipality/VDC :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder=" Municipality/VDC" class="col-md-12" type="text"
                               name="municipality_or_vdc" id="municipality_or_vdc"
                               value="<?php echo !empty($propertyInfo->municipality_or_vdc) ? $propertyInfo->municipality_or_vdc : ""; ?>">
                    </div>
                
            </div>
           
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            City :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder=" City" class="col-md-12" type="text"
                               name="city" id="city"
                               value="<?php echo !empty($propertyInfo->city) ? $propertyInfo->city : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                       <label>Location :</label>
                    </div>
                    <div class="form-input col-md-2">
                        <select name="location" class="validate[required]" id="location" required>
                            <option value="">Choose</option>

                        <?php $sql = "SELECT id,status, title FROM tbl_location WHERE status='1' ORDER BY sortorder ASC";
                        $location = Location::find_by_sql($sql); 
                      
                        if(!empty($location)) {
                            foreach($location as $locationRow) {
                                $sel = (!empty($propertyInfo->location) and $propertyInfo->location==$locationRow->id) ?'selected':'';
                                $result3.='<option value="'.$locationRow->id.'" '.$sel.'>'.$locationRow->title.'</option>';
                            }
                            
                        }
                        echo $result3; ?>
                    </select>
                </div>
                     <?php if(!empty($propertyInfo->user_property_location)){ ?>
                    <div class="form-label col-md-2">
                        <label for="">
                            Users Location :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Location given by user" class="col-md-12" type="text"
                               name="user_property_location" id="user_property_location"
                               value="<?php echo !empty($propertyInfo->user_property_location) ? $propertyInfo->user_property_location : ""; ?>">
                    </div>
                    <?php } ?>
                </div>
                
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Road Access :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="road_access" name="road_access">
                            <option value="">Choose</option>
                             <?php foreach ($road_access as $key => $val) {
                                $selr=(!empty($propertyInfo->road_access) and $propertyInfo->road_access==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Road Width :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="eg. 3.5 ft." class="col-md-12" type="text"
                               name="road_width" id="road_width"
                               value="<?php echo !empty($propertyInfo->road_width) ? $propertyInfo->road_width : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Facing Direction :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Facing Direction" class="col-md-12 validate[required,length[0,200]]" type="text"
                               name="facing_direction" id="facing_direction"
                               value="<?php echo !empty($propertyInfo->facing_direction) ? $propertyInfo->facing_direction : ""; ?>">
                    </div>
                </div>
               
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            List Price :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="List Price" class="validate[required,length[0,200]]" type="text"
                               name="list_price" id="list_price"
                               value="<?php echo !empty($propertyInfo->list_price) ? $propertyInfo->list_price : ""; ?>">
                    </div>
               
                    <div class="form-label col-md-2">
                        <label for="">
                            Price :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Selling Price" class="validate[required,length[0,200]]" type="text"
                               name="selling_price" id="selling_price"
                               value="<?php echo !empty($propertyInfo->selling_price) ? $propertyInfo->selling_price : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Sold Price :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Sold Price" type="text"
                               name="sold_price" id="sold_price"
                               value="<?php echo !empty($propertyInfo->sold_price) ? $propertyInfo->sold_price : ""; ?>">
                    </div>
                </div>
                    <div class="form-row">
                        <div class="form-label col-md-2">
                            <label for="">
                                Main Road :
                            </label>
                        </div>
                        <div class="form-input col-md-2">
                            <select data-placeholder="None" class="chosen-select" id="main_road" name="main_road" onchange="showDiv('hidden_div', this)">
                                <option value="">Choose</option>
                                 <?php foreach ($main_road as $key => $val) {
                                    $selr=(!empty($propertyInfo->main_road) and $propertyInfo->main_road==$key) ? 'selected':'';
                                    echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                                }
                                ?> 
                            </select>
                            <?php 
                                $styley='';
                                $stylem = 'style="display:none; margin-top:5px;"';
                                if(isset($propertyInfo->main_road)){
                                if($propertyInfo->main_road == 'Yes' ){
                                    $styley = 'style="display:none; margin-top:5px;"';
                                }elseif($propertyInfo->main_road == 'No'){
                                    $styley = 'style="display:block; margin-top:5px;"'; 
                                }else{
                                    $styley = 'style="display:none; margin-top:5px;"'; 
                                } 
                                } ?>
                            </select>
                            <div id="hidden_div" <?php if($styley){echo $styley;}else{echo $stylem;} ?>>
                                <label for="">Distance from main road :</label>
                                <input placeholder="Distance From Main Road" class="col-md-12" type="text"
                                   name="distance_from_mainroad" id="distance_from_mainroad"
                                   value="<?php echo !empty($propertyInfo->distance_from_mainroad) ? $propertyInfo->distance_from_mainroad : ""; ?>">
                            </div>
                        </div>
                        <div class="form-label col-md-2">
                            <label for="">
                                Nearest Landmark :
                            </label>
                        </div>
                        <div class="form-input col-md-2">
                            <input placeholder="Nearest Landmark" class="col-md-12" type="text"
                                   name="nearest_landmark" id="nearest_landmark"
                                   value="<?php echo !empty($propertyInfo->nearest_landmark) ? $propertyInfo->nearest_landmark : ""; ?>">
                        </div>
                        <div class="form-label col-md-2">
                            <label for="">
                                Distance From Landmark :
                            </label>
                        </div>
                        <div class="form-input col-md-2">
                            <input placeholder="Distance From Landmark" class="col-md-12" type="text"
                                   name="distance_from_landmark" id="distance_from_landmark"
                                   value="<?php echo !empty($propertyInfo->distance_from_landmark) ? $propertyInfo->distance_from_landmark : ""; ?>">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-label col-md-2">
                            <label for="">
                                Land Area :
                            </label>
                            </div>
                        <div class="form-input col-md-2">
                            <div class="totalarea"><?php echo !empty($propertyInfo->land_area) ? $propertyInfo->land_area : ""; ?></div>
                            <input type="hidden" value="<?php echo !empty($propertyInfo->land_area) ? $propertyInfo->land_area : ""; ?>" name="land_area" id="TOTAL">
                        </div>
                            <?php
                                $checked="checked=checked";
                                $styleb = 'style="display:block;"';
                                $stylen = 'style="display:none;"';
                                  $checked1=$checked2= $style1= $style2='';
                                if(isset($propertyInfo->land)){
                                    if($propertyInfo->land=='Hilly'){
                                       $checked1 = "checked=checked";
                                       $style1='style="display:block;"';
                                       $style2='style="display:none;"';
                                       }
                                       elseif($propertyInfo->land=='Terai'){
                                       $checked2 = "checked=checked";
                                        $style2='style="display:block;"';
                                        $style1='style="display:none;"';
                                    }
                                    else{
                                        $style1='style="display:block;"';
                                        $style2='style="display:none;"';
                                       }
                                   }
                            ?>
                        <div class="form-checkbox-radio col-md-2">
                            <input class="custom-radio" name="land" value="Hilly" type="radio" onclick="show1();" <?php if($checked1){echo $checked1;}else{echo $checked;} ?>/>
                            <label for=""> Hilly</label>
                            <input class="custom-radio" name="land" value="Terai" type="radio" onclick="show2();" <?php if($checked2){echo $checked2;} ?>/> 
                            <label for=""> Terai </label>
                        </div>
                        <div class="form-label col-md-2">
                            <label for="">
                                Plot/Kitta No :
                            </label>
                        </div>
                        <div class="form-input col-md-4">
                            <input placeholder="Plot/Kitta No." class="col-md-6" type="text" name="plot_no" id="plot_no" value="<?php echo !empty($propertyInfo->plot_no) ? $propertyInfo->plot_no : ""; ?>">
                        </div>
                    </div>
                    <div class="form-row">
                        <div id="div1" <?php if($style1){echo $style1;}else{echo $styleb;} ?>>
                            <div class="form-input col-md-1">
                              <label for="">  Ropani </label>
                                <input class="form-control" type="number" id="ropanihill" onChange="calculate()" onkeyup="calculate()" name="ropani" value="<?php echo !empty($propertyInfo->ropani) ? $propertyInfo->ropani : ""; ?>">
                            </div>
                            <div class="form-input col-md-1">
                                <label for="">  Aana </label>
                                <input class="form-control" type="number" id="aanahill" onChange="calculate()" onkeyup="calculate()" name="aana" value="<?php echo !empty($propertyInfo->aana) ? $propertyInfo->aana : ""; ?>">
                            </div>
                            <div class="form-input col-md-1">
                                <label for="">  Paisa </label>
                                <input class="form-control" type="number" id="paisahill" onChange="calculate()" onkeyup="calculate()" name="paisa" value="<?php echo !empty($propertyInfo->paisa) ? $propertyInfo->paisa : ""; ?>">
                            </div>
                            <div class="form-input col-md-1">
                                <label for="">  Dam </label>
                                <input class="form-control" type="number" id="damhill" onChange="calculate()" onkeyup="calculate()" name="dam" value="<?php echo !empty($propertyInfo->dam) ? $propertyInfo->dam : ""; ?>">
                            </div>
                        </div>
                        <div id="div2" <?php if($style2){echo $style2;}else{echo $stylen;} ?>>
                            <div class="form-input col-md-1">
                                <label for="">  Bigha </label>
                                <input class="form-control" type="number" id="bigha" onChange="calculate()" onkeyup="calculate()" name="bigha" value="<?php echo !empty($propertyInfo->bigha) ? $propertyInfo->bigha : ""; ?>">
                            </div>
                            <div class="form-input col-md-1">
                                <label for="">  Katha </label>
                                <input class="form-control" type="number" id="katha" onChange="calculate()" onkeyup="calculate()" name="katha" value="<?php echo !empty($propertyInfo->katha) ? $propertyInfo->katha : ""; ?>">
                            </div>
                            <div class="form-input col-md-1">
                                <label for="">  Dhur </label>
                                <input class="form-control" type="number" id="dhur" onChange="calculate()" onkeyup="calculate()" name="dhur" value="<?php echo !empty($propertyInfo->dhur) ? $propertyInfo->dhur : ""; ?>">
                            </div>
                            <div class="form-input col-md-1">
                                <label for="">  Haath </label>
                                <input class="form-control" type="number" id="haath" onChange="calculate()" onkeyup="calculate()" name="haath" value="<?php echo !empty($propertyInfo->haath) ? $propertyInfo->haath : ""; ?>">
                            </div>
                        </div>

                    </div>
            <div id="hidden_field" style="display:block;">
                  <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Built Up Area :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="BUA (in sq. ft.)" class="form-control" type="text"
                               name="build_up_area" id="build_up_area"
                               value="<?php echo !empty($propertyInfo->build_up_area) ? $propertyInfo->build_up_area : ""; ?>">
                    </div>
                    
                    <div class="form-label col-md-2">
                        <label for="">
                            Furnishing :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="furnished" name="furnished">
                            <option value="">Choose</option>
                             <?php foreach ($furnished as $key => $val) {
                                $selr=(!empty($propertyInfo->furnished) and $propertyInfo->furnished==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            No of storied :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="No of storied" class="col-md-12" type="text"
                               name="no_of_storey" id="no_of_storey"
                               value="<?php echo !empty($propertyInfo->no_of_storey) ? $propertyInfo->no_of_storey : ""; ?>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Structure/Style :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="structure_style" name="structure_style" onchange="hideDiv('showhide_div', this)">
                            <option value="">Choose</option>
                             <?php foreach ($structure_style as $key => $val) {
                                $selr=(!empty($propertyInfo->structure_style) and $propertyInfo->structure_style==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                        <?php 
                                $styles='';
                                $styleno = 'style="display:none; margin-top:5px;"';
                                if(isset($propertyInfo->structure_style)){
                                if($propertyInfo->structure_style == 'Others' ){
                                    $styles = 'style="display:block; margin-top:5px;"'; 
                                }else{
                                    $styles = 'style="display:none; margin-top:5px;"'; 
                                } 
                                } 
                        ?>
                        <div id="showhide_div" <?php if($styles){echo $styles;}else{echo $styleno;} ?>>
                                <input placeholder="Mention Structure/Style" class="col-md-12" type="text"
                                   name="other_structure_style" id="other_structure_style"
                                   value="<?php echo !empty($propertyInfo->other_structure_style) ? $propertyInfo->other_structure_style : ""; ?>">
                            </div>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Basement :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="eg. 2" class="col-md-12" type="text"
                               name="basement" id="basement"
                               value="<?php echo !empty($propertyInfo->basement) ? $propertyInfo->basement : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Parking Spot :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="eg. 4" class="col-md-12" type="text"
                               name="parking_spot" id="parking_spot"
                               value="<?php echo !empty($propertyInfo->parking_spot) ? $propertyInfo->parking_spot : ""; ?>">
                    </div>
                    
                </div>
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Bedroom:
                        </label>
                    </div>
                    
                    <div class="form-input col-md-2">
                        <input placeholder="Bedroom" class="col-md-12 form-control" type="text"
                               name="bedroom" id="bedroom"
                               value="<?php echo !empty($propertyInfo->bedroom) ? $propertyInfo->bedroom : ""; ?>">
                    </div>
                
                    <div class="form-label col-md-2">
                        <label for="">
                          Common Bathroom :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Bathroom" class="col-md-12 form-control" type="text"
                               name="bathroom" id="bathroom"
                               value="<?php echo !empty($propertyInfo->bathroom) ? $propertyInfo->bathroom : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                          Attached Bathroom :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Bathroom" class="col-md-12" type="text"
                               name="attached_bathroom" id="attached_bathroom"
                               value="<?php echo !empty($propertyInfo->attached_bathroom) ? $propertyInfo->attached_bathroom : ""; ?>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Living Room :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Living Room" class="col-md-12" type="text"
                               name="living_room" id="living_room"
                               value="<?php echo !empty($propertyInfo->living_room) ? $propertyInfo->living_room : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Study Room :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="eg. 2" class="col-md-12" type="text"
                               name="study_room" id="study_room"
                               value="<?php echo !empty($propertyInfo->study_room) ? $propertyInfo->study_room : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Kitchen :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Kitchen" class="col-md-12" type="text"
                               name="kitchen" id="kitchen"
                               value="<?php echo !empty($propertyInfo->kitchen) ? $propertyInfo->kitchen : ""; ?>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Dining Room :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Dining Room eg. 1" class="col-md-12" type="text"
                               name="dining_room" id="dining_room"
                               value="<?php echo !empty($propertyInfo->dining_room) ? $propertyInfo->dining_room : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Family Lounge :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="eg. 2" class="col-md-12" type="text"
                               name="family_lounge" id="family_lounge"
                               value="<?php echo !empty($propertyInfo->family_lounge) ? $propertyInfo->family_lounge : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Pooja Room :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="pooja room eg. 1" class="col-md-12" type="text"
                               name="puja_room" id="puja_room"
                               value="<?php echo !empty($propertyInfo->puja_room) ? $propertyInfo->puja_room : ""; ?>">
                    </div>
                </div>
                    
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Store Room:
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Number of Store" class="col-md-12" type="text"
                               name="no_of_store" id="no_of_store"
                               value="<?php echo !empty($propertyInfo->no_of_store) ? $propertyInfo->no_of_store : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Laundry Room :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="eg. 2" class="col-md-12" type="text"
                               name="laundry_room" id="laundry_room"
                               value="<?php echo !empty($propertyInfo->laundry_room) ? $propertyInfo->laundry_room : ""; ?>">
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Servant Room :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="servant room eg. 1" class="col-md-12" type="text"
                               name="servant_room" id="servant_room"
                               value="<?php echo !empty($propertyInfo->servant_room) ? $propertyInfo->servant_room : ""; ?>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Garden :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <input placeholder="Garden Space" class="col-md-12" type="text"
                               name="garden" id="garden"
                               value="<?php echo !empty($propertyInfo->garden) ? $propertyInfo->garden : ""; ?>">
                    </div>
                    
                    <div class="form-label col-md-2">
                        <label for="">
                            Property Status :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="property_status" name="property_status">
                            <option value="">Choose</option>
                             <?php foreach ($property_status as $key => $val) {
                                $sel=(!empty($propertyInfo->property_status) and $propertyInfo->property_status==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$sel.'>'.$val.'</option>';
                            }
                            ?>
                        </select>
                    </div>
                </div>
            
                 <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Electricity :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="electricity" name="electricity">
                            <option value="">Choose</option>
                             <?php foreach ($electricity as $key => $val) {
                                $selr=(!empty($propertyInfo->electricity) and $propertyInfo->electricity==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Water Supply :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="drinking_water_supply" name="drinking_water_supply">
                            <option value="">Choose</option>
                             <?php foreach ($drinking_water_supply as $key => $val) {
                                $selr=(!empty($propertyInfo->drinking_water_supply) and $propertyInfo->drinking_water_supply==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Drainage/Sewage :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="sewage" name="sewage">
                            <option value="">Choose</option>
                             <?php foreach ($sewage as $key => $val) {
                                $selr=(!empty($propertyInfo->sewage) and $propertyInfo->sewage==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Cable line :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="cable_line" name="cable_line">
                            <option value="">Choose</option>
                             <?php foreach ($cable_line as $key => $val) {
                                $selr=(!empty($propertyInfo->cable_line) and $propertyInfo->cable_line==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Telecommunication :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="telecommunication" name="telecommunication">
                            <option value="">Choose</option>
                             <?php foreach ($telecommunication as $key => $val) {
                                $selr=(!empty($propertyInfo->telecommunication) and $propertyInfo->telecommunication==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Guard house :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="guard_house" name="guard_house">
                            <option value="">Choose</option>
                             <?php foreach ($guard_house as $key => $val) {
                                $selr=(!empty($propertyInfo->guard_house) and $propertyInfo->guard_house==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-label col-md-3">
                        <label for="">
                            Under-ground water-tank :
                        </label>
                    </div>
                    <div class="form-input col-md-3">
                        <select data-placeholder="None" class="chosen-select" id="under_ground_water_tank" name="under_ground_water_tank">
                            <option value="">Choose</option>
                             <?php foreach ($cable_line as $key => $val) {
                                $selr=(!empty($propertyInfo->under_ground_water_tank) and $propertyInfo->under_ground_water_tank==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                    <div class="form-label col-md-2">
                        <label for="">
                            Solar water heater :
                        </label>
                    </div>
                    <div class="form-input col-md-2">
                        <select data-placeholder="None" class="chosen-select" id="solar_water_heater" name="solar_water_heater">
                            <option value="">Choose</option>
                             <?php foreach ($solar_water_heater as $key => $val) {
                                $selr=(!empty($propertyInfo->solar_water_heater) and $propertyInfo->solar_water_heater==$key) ? 'selected':'';
                                echo '<option value="'.$key.'"'.$selr.'>'.$val.'</option>';
                            }
                            ?> 
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Community housing :
                        </label>
                    </div>  
                            <?php
                                $checked="checked=checked";
                                $styleb = 'style="display:block;"';
                                $stylen = 'style="display:none;"';
                                  $checked1=$checked2= $style1= $style2='';
                                if(isset($propertyInfo->community_housing)){
                                    if($propertyInfo->community_housing=='Yes'){
                                       $checked1 = "checked=checked";
                                       $style1='style="display:block;"';
                                       $style2='style="display:none;"';
                                       }
                                       elseif($propertyInfo->community_housing=='No'){
                                        $checked2 = "checked=checked";
                                        $style2='style="display:block;"';
                                        $style1='style="display:none;"';
                                    }
                                    else{
                                        $checked2 = "checked=checked";
                                        $style2='style="display:block;"';
                                        $style1='style="display:none;"';
                                       }
                                   }
                            ?>  
                    <div class="form-checkbox-radio col-md-2">
                        <input class="custom-radio" name="community_housing" value="No" type="radio" onclick="showNo();" <?php if($checked2){echo $checked2;}else{echo $checked;} ?>/>
                        <label for=""> No</label>
                        <input class="custom-radio" name="community_housing" value="Yes" type="radio" onclick="showYes();" <?php if($checked1){echo $checked1;} ?>/> 
                        <label for=""> Yes </label>
                    </div>
                </div>
                <div class="form-row">
                    <div id="divno" <?php if($style2){echo $style2;}else{echo $styleb;} ?>>
                       <!-- choose yes if community housing -->
                    </div>
                    <div id="divyes" <?php if($style1){echo $style1;}else{echo $stylen;} ?>>
                        <div class="form-checkbox-radio col-md-12" style="margin-bottom: 15px;">
                            <input type="checkbox" class="custom-radio" name="swimming" id="swimming"
                                   value="1" <?php echo !empty($swimming) ? $swimming : ""; ?>>
                            <label for="">Swimming Pool</label>
                           
                            <input type="checkbox" class="custom-radio" name="security" id="security"
                                   value="1" <?php echo !empty($security) ? $security : ""; ?>>
                            <label for="">Security</label>

                            <input type="checkbox" class="custom-radio" name="gym_hall" id="gym_hall"
                                   value="1" <?php echo !empty($gym_hall) ? $gym_hall : ""; ?>>
                            <label for="">Gym Hall</label>

                            <input type="checkbox" class="custom-radio" name="elevator_or_lift" id="elevator_or_lift"
                                   value="1" <?php echo !empty($elevator_or_lift) ? $elevator_or_lift : ""; ?>>
                            <label for="">Elevator/Lift</label>

                        </div><br>
                        <div class="form-label col-md-2">
                            <label for="">
                                Power Backup :
                            </label>
                        </div>
                        <div class="form-input col-md-2">
                            <input placeholder="pwoer backup" class="col-md-12" type="text"
                                   name="power_backup" id="power_backup"
                                   value="<?php echo !empty($propertyInfo->power_backup) ? $propertyInfo->power_backup : ""; ?>">
                        </div>
                        <div class="form-label col-md-2">
                            <label for="">
                                Water Supply :
                            </label>
                        </div>
                        <div class="form-input col-md-2">
                            <input placeholder="Water Sypply" class="col-md-12" type="text"
                                   name="community_water_supply" id="community_water_supply"
                                   value="<?php echo !empty($propertyInfo->community_water_supply) ? $propertyInfo->community_water_supply : ""; ?>">
                        </div>
                        <div class="form-label col-md-2">
                                <label for="">
                                    Com. Monthly Fee :
                                </label>
                            </div>
                            <div class="form-input col-md-2">
                                <input placeholder="Community Monthly Fee" class="col-md-12" type="text"
                                       name="community_monthly_fee" id="community_monthly_fee"
                                       value="<?php echo !empty($propertyInfo->community_monthly_fee) ? $propertyInfo->community_monthly_fee : ""; ?>">
                            </div>
                    </div>

                </div>
        </div>       
                 <div class="form-row">
                    <div class="form-label col-md-12">
                        <label for="">
                            Google Map :
                        </label>
                        <textarea name="google_map" id="google_map" placeholder="copy and paste here google map iframe link"><?php echo !empty($propertyInfo->google_map) ? $propertyInfo->google_map : ""; ?></textarea>
                        <span>eg. https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3532.243053473502!2d85.27817261467692!3d27.
                        709780931992746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb185358629a57%3A0x
                        7dc6d5057bcecd93!2sBrihat%20Property%20Solution!5e0!3m2!1sen!2snp!4v1575871387810!5m2!1sen!2snp</span>
                    </div>
                </div>

                 <div class="form-row">
                    <div class="form-checkbox-radio col-md-9">
                        <input type="radio" class="custom-radio" name="status" id="check1"
                               value="1" <?php echo !empty($status) ? $status : "checked"; ?>>
                        <label for="">Published</label>
                        <input type="radio" class="custom-radio" name="status" id="check0"
                               value="0" <?php echo !empty($unstatus) ? $unstatus : ""; ?>>
                        <label for="">Un-Published</label>
                    </div>
                </div>
    
                <!-- Meta Tags-->
                <div class="form-row">
                    <div class="form-checkbox-radio col-md-9">
                        <a class="btn medium bg-blue" href="javascript:void(0);" onClick="toggleMetadata();">
                        <span class="glyph-icon icon-separator float-right">
                        	<i class="glyph-icon icon-caret-down"></i>
                        </span>
                            <span class="button-content"> Metadata Info </span>
                        </a>
                    </div>
                </div>

                <div class="form-row <?php echo (!empty($propertyInfo->meta_keywords) || !empty($propertyInfo->meta_description) || !empty($propertyInfo->meta_title)) ? '' : 'hide'; ?> metadata">
                    <div class="col-md-12">
                        <div class="form-input col-md-12">
                            <input placeholder="Meta Title" class="col-md-6 validate[required]" type="text"
                                   name="meta_title" id="meta_title"
                                   value="<?php echo !empty($propertyInfo->meta_title) ? $propertyInfo->meta_title : ""; ?>">
                        </div>
                        <br/>
                        <div class="form-input col-md-12">
                            <div class="row">
                                <div class="col-md-6">
                                    <textarea placeholder="Meta Keyword" name="meta_keywords" id="meta_keywords" class="character-keyword validate[required]"><?php echo !empty($propertyInfo->meta_keywords) ? $propertyInfo->meta_keywords : ""; ?></textarea>
                                    <div class="keyword-remaining clear input-description">250 characters left</div>
                                </div>
                                <div class="col-md-6">
                                    <textarea placeholder="Meta Description" name="meta_description" id="meta_description" class="character-description validate[required]"><?php echo !empty($propertyInfo->meta_description) ? $propertyInfo->meta_description : ""; ?></textarea>
                                    <div class="description-remaining clear input-description">160 characters left</div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <button btn-action='0' type="submit" name="submit"
                        class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4"
                        id="btn-submit" title="Save">
                <span class="button-content">
                    Save
                </span>
                </button>
                <button btn-action='1' type="submit" name="submit"
                        class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4"
                        id="btn-submit" title="Save">
                <span class="button-content">
                    Save & More
                </span>
                </button>
                <button btn-action='2' type="submit" name="submit"
                        class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4"
                        id="btn-submit" title="Save">
                <span class="button-content">
                    Save & quit
                </span>
                </button>
                <input myaction='0' type="hidden" name="idValue" id="idValue"
                       value="<?php echo !empty($propertyInfo->id) ? $propertyInfo->id : 0; ?>"/>
            </form>
        </div>
    </div>
    <script>
        var base_url = "<?php echo ASSETS_PATH; ?>";
        var editor_arr = ["content"];
        create_editor(base_url, editor_arr);

       // hide and show div onchange yes or no value
            function showDiv(divId, element)
            {
                document.getElementById(divId).style.display = element.value == 'No' ? 'block' : 'none';
            }
        // hide and show div onchange yes or no value
            function hideDiv(divhideId, element)
            {
                document.getElementById(divhideId).style.display = element.value == 'Others' ? 'block' : 'none';
            }
        // hide and show field onchange yes or no value
            function hideField(divId, element)
            {
                document.getElementById(divId).style.display = element.value == '12' ? 'none' : 'block';
            }
            var e = document.getElementById("category");
                var catval = e.options[e.selectedIndex].value;
            if(catval==12){
               document.getElementById( 'hidden_field' ).style.display = 'none';
            }
    </script>

    <script type="text/javascript" src="<?php echo ASSETS_PATH; ?>uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript">
        // <![CDATA[
        $(document).ready(function () {
            $('#gallery_upload').uploadify({
                'swf': '<?php echo ASSETS_PATH;?>uploadify/uploadify.swf',
                'uploader': '<?php echo ASSETS_PATH;?>uploadify/uploadify.php',
                'formData': {
                    PROJECT: '<?php echo SITE_FOLDER;?>',
                    targetFolder: 'images/property/',
                    thumb_width: 200,
                    thumb_height: 200
                },
                'method': 'post',
                'cancelImg': '<?php echo BASE_URL;?>uploadify/cancel.png',
                'auto': true,
                'multi': true,
                'hideButton': false,
                'buttonText': 'Upload Image',
                'width': 125,
                'height': 21,
                'removeCompleted': true,
                'progressData': 'speed',
                'uploadLimit': 100,
                'fileTypeExts': '*.gif; *.jpg; *.jpeg;  *.png; *.GIF; *.JPG; *.JPEG; *.PNG;',
                'buttonClass': 'button formButtons',
                /* 'checkExisting' : '/uploadify/check-exists.php',*/
                'onUploadSuccess': function (file, data, response) {
                    $('#uploadedImageName').val('1');
                    var filename = data;
                    $.post('<?php echo BASE_URL;?>apanel/property/uploaded_image.php', {imagefile: filename}, function (msg) {
                        $('#preview_Image').append(msg).show();
                    });

                },
                'onDialogOpen': function (event, ID, fileObj) {
                },
                'onUploadError': function (file, errorCode, errorMsg, errorString) {
                    alert(errorMsg);
                },
                'onUploadComplete': function (file) {
                    //alert('The file ' + file.name + ' was successfully uploaded');
                }
            });

            
            });
        
        // ]]>
    </script>
<?php endif; 
include("property_image.php");?>