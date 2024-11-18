<?php
// Load the header files first
header("Expires: 0");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("cache-control: no-store, no-cache, must-revalidate");
header("Pragma: no-cache");

// Load necessary files then...
require_once('../initialize.php');

$action = $_REQUEST['action'];

switch ($action) {
    case "add":
        $record = new Property();

        $record->slug = create_slug($_REQUEST['title']);
        $record->title = $_REQUEST['title'];
        $record->image = serialize(array_values(array_filter($_REQUEST['imageArrayname'])));
        $record->category = $_REQUEST['category'];
        $record->content = $_REQUEST['content'];
        $record->excerpt = $_REQUEST['excerpt'];
        $record->featured = (isset($_REQUEST['featured']) and !empty($_REQUEST['featured']))?$_REQUEST['featured']:'';
    
        $record->sold_out = (isset($_REQUEST['sold_out']) and !empty($_REQUEST['sold_out']))?$_REQUEST['sold_out']:'';
        $record->road_access = $_REQUEST['road_access'];
        $record->road_width = $_REQUEST['road_width'];
        $record->payment_type = $_REQUEST['payment_type'];
        if($_REQUEST['expire_on']){
        $record->expire_on = date("Y-m-d", strtotime($_REQUEST['expire_on']));
        }else{
           $record->expire_on =""; 
        }
        $record->call_us = $_REQUEST['call_us'];
        $record->call_us_mobile = $_REQUEST['call_us_mobile'];
        $record->list_price = $_REQUEST['list_price'];
        $record->selling_price = $_REQUEST['selling_price'];
        $record->sold_price = $_REQUEST['sold_price'];
        $record->land = $_REQUEST['land'];
        $record->community_housing = $_REQUEST['community_housing'];
        $record->land_area = $_REQUEST['land_area'];
        $record->build_up_area = $_REQUEST['build_up_area'];
        $record->plot_no = $_REQUEST['plot_no'];
        $record->bedroom = $_REQUEST['bedroom'];
        $record->bathroom = $_REQUEST['bathroom'];
        $record->kitchen = $_REQUEST['kitchen'];
        $record->property_type = $_REQUEST['property_type'];
        $record->property_status = $_REQUEST['property_status'];
        $record->province = $_REQUEST['province'];
        $record->district = $_REQUEST['district'];
        $record->municipality_or_vdc = $_REQUEST['municipality_or_vdc'];
        $record->city = $_REQUEST['city'];
        $record->location = $_REQUEST['location'];
        if(isset($_REQUEST['user_property_location'])){
        $record->user_property_location = $_REQUEST['user_property_location'];
         }
        $record->no_of_storey = $_REQUEST['no_of_storey'];
        $record->parking_spot = $_REQUEST['parking_spot'];
        $record->facing_direction = $_REQUEST['facing_direction'];
        $record->furnished = $_REQUEST['furnished'];
        $record->garden = $_REQUEST['garden'];
        $record->main_road = $_REQUEST['main_road'];
        $record->distance_from_mainroad	 = $_REQUEST['distance_from_mainroad'];
        $record->nearest_landmark = $_REQUEST['nearest_landmark'];
        $record->distance_from_landmark = $_REQUEST['distance_from_landmark'];
        $record->structure_style = $_REQUEST['structure_style'];
        $record->other_structure_style = $_REQUEST['other_structure_style'];
        $record->living_room = $_REQUEST['living_room'];
        $record->basement = $_REQUEST['basement'];
        $record->attached_bathroom = $_REQUEST['attached_bathroom'];
        $record->servant_room = $_REQUEST['servant_room'];
        $record->study_room = $_REQUEST['study_room'];
        $record->dining_room = $_REQUEST['dining_room'];
        $record->family_lounge = $_REQUEST['family_lounge'];
        $record->laundry_room = $_REQUEST['laundry_room'];
        $record->no_of_store = $_REQUEST['no_of_store'];
        $record->google_map = $_REQUEST['google_map'];
        
        $record->puja_room = $_REQUEST['puja_room'];
        $record->security = (isset($_REQUEST['security']) and !empty($_REQUEST['security']))?$_REQUEST['security']:'';
        $record->gym_hall = (isset($_REQUEST['gym_hall']) and !empty($_REQUEST['gym_hall']))?$_REQUEST['gym_hall']:'';
        $record->elevator_or_lift = (isset($_REQUEST['elevator_or_lift']) and !empty($_REQUEST['elevator_or_lift']))?$_REQUEST['elevator_or_lift']:'';
        $record->swimming = (isset($_REQUEST['swimming']) and !empty($_REQUEST['swimming']))?$_REQUEST['swimming']:'';
        $record->power_backup = $_REQUEST['power_backup'];
        $record->community_water_supply = $_REQUEST['community_water_supply'];
        $record->community_monthly_fee = $_REQUEST['community_monthly_fee'];

        $record->drinking_water_supply = $_REQUEST['drinking_water_supply'];
        $record->electricity = $_REQUEST['electricity'];
        $record->sewage = $_REQUEST['sewage'];
        $record->cable_line = $_REQUEST['cable_line'];
        $record->telecommunication = $_REQUEST['telecommunication'];
        $record->guard_house = $_REQUEST['guard_house'];
        $record->under_ground_water_tank = $_REQUEST['under_ground_water_tank'];
        $record->solar_water_heater = $_REQUEST['solar_water_heater'];
        
        $record->bigha = $_REQUEST['bigha'];
        $record->katha = $_REQUEST['katha'];
        $record->dhur = $_REQUEST['dhur'];
        $record->haath = $_REQUEST['haath'];
        $record->ropani = $_REQUEST['ropani'];
        $record->aana = $_REQUEST['aana'];
        $record->paisa = $_REQUEST['paisa'];
        $record->dam = $_REQUEST['dam'];
        
        $record->status = $_REQUEST['status'];
        $record->meta_title = $_REQUEST['meta_title'];
        $record->meta_keywords = $_REQUEST['meta_keywords'];
        $record->meta_description = $_REQUEST['meta_description'];
        $record->sortorder = Property::find_maximum();
       

        $checkDupliName = Property::checkDupliName($record->title);
        if ($checkDupliName):
            echo json_encode(array("action" => "warning", "message" => "Property Already Exists."));
            exit;
        endif;
        $db->begin();
        if ($record->save()): $db->commit();
            $message = sprintf($GLOBALS['basic']['addedSuccess_'], "Property '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action($message, 1, 3);
        else:
            $db->rollback();
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['unableToSave']));
        endif;
        break;

    case "edit":
        $record = Property::find_by_id($_REQUEST['idValue']);

        if ($record->title != $_REQUEST['title']) {
            $checkDupliName = Property::checkDupliName($_REQUEST['title']);
            if ($checkDupliName):
                echo json_encode(array("action" => "warning", "message" => "Property is already exist."));
                exit;
            endif;
        }
        $record->slug = create_slug($_REQUEST['title']);
        $record->title = $_REQUEST['title'];
        $record->image = serialize(array_values(array_filter($_REQUEST['imageArrayname'])));
        $record->category = $_REQUEST['category'];
        $record->content = $_REQUEST['content'];
        $record->excerpt = $_REQUEST['excerpt'];
        $record->road_access = $_REQUEST['road_access'];
        $record->road_width = $_REQUEST['road_width'];
        $record->featured = (isset($_REQUEST['featured']) and !empty($_REQUEST['featured']))?$_REQUEST['featured']:'';
        $record->sold_out = (isset($_REQUEST['sold_out']) and !empty($_REQUEST['sold_out']))?$_REQUEST['sold_out']:'';
        $record->payment_type = $_REQUEST['payment_type'];
        if($_REQUEST['expire_on']){
        $record->expire_on = date("Y-m-d", strtotime($_REQUEST['expire_on']));
        }else{
           $record->expire_on =""; 
        }
        $record->call_us = $_REQUEST['call_us'];
        $record->call_us_mobile = $_REQUEST['call_us_mobile'];
        $record->list_price = $_REQUEST['list_price'];
        $record->selling_price = $_REQUEST['selling_price'];
        $record->sold_price = $_REQUEST['sold_price'];
        $record->land = $_REQUEST['land'];
        $record->community_housing = $_REQUEST['community_housing'];
        $record->land_area = $_REQUEST['land_area'];
        $record->plot_no = $_REQUEST['plot_no'];
        $record->build_up_area = $_REQUEST['build_up_area'];
        $record->bedroom = $_REQUEST['bedroom'];
        $record->bathroom = $_REQUEST['bathroom'];
        $record->kitchen = $_REQUEST['kitchen'];
        $record->property_type = $_REQUEST['property_type'];
        $record->property_status = $_REQUEST['property_status'];
        $record->province = $_REQUEST['province'];
        $record->district = $_REQUEST['district'];
        $record->municipality_or_vdc = $_REQUEST['municipality_or_vdc'];
        $record->city = $_REQUEST['city'];
        $record->location = $_REQUEST['location'];
        if(isset($_REQUEST['user_property_location'])){
        $record->user_property_location = $_REQUEST['user_property_location'];
        }
        $record->no_of_storey = $_REQUEST['no_of_storey'];
        $record->parking_spot = $_REQUEST['parking_spot'];
        $record->facing_direction = $_REQUEST['facing_direction'];
        $record->furnished = $_REQUEST['furnished'];
        $record->garden = $_REQUEST['garden'];
        $record->main_road = $_REQUEST['main_road'];
        $record->distance_from_mainroad	 = $_REQUEST['distance_from_mainroad'];
        $record->nearest_landmark = $_REQUEST['nearest_landmark'];
        $record->distance_from_landmark = $_REQUEST['distance_from_landmark'];
        $record->structure_style = $_REQUEST['structure_style'];
        $record->other_structure_style = $_REQUEST['other_structure_style'];
        $record->living_room = $_REQUEST['living_room'];
        $record->basement = $_REQUEST['basement'];
        $record->attached_bathroom = $_REQUEST['attached_bathroom'];
        $record->servant_room = $_REQUEST['servant_room'];
        $record->study_room = $_REQUEST['study_room'];
        $record->dining_room = $_REQUEST['dining_room'];
        $record->family_lounge = $_REQUEST['family_lounge'];
        $record->laundry_room = $_REQUEST['laundry_room'];
        $record->no_of_store = $_REQUEST['no_of_store'];
        $record->google_map = $_REQUEST['google_map'];
        
        $record->puja_room = $_REQUEST['puja_room'];
        $record->security = (isset($_REQUEST['security']) and !empty($_REQUEST['security']))?$_REQUEST['security']:'';
        $record->gym_hall = (isset($_REQUEST['gym_hall']) and !empty($_REQUEST['gym_hall']))?$_REQUEST['gym_hall']:'';
        $record->elevator_or_lift = (isset($_REQUEST['elevator_or_lift']) and !empty($_REQUEST['elevator_or_lift']))?$_REQUEST['elevator_or_lift']:'';
        $record->swimming = (isset($_REQUEST['swimming']) and !empty($_REQUEST['swimming']))?$_REQUEST['swimming']:'';
        $record->power_backup = $_REQUEST['power_backup'];
        $record->community_water_supply = $_REQUEST['community_water_supply'];
        $record->community_monthly_fee = $_REQUEST['community_monthly_fee'];

        $record->drinking_water_supply = $_REQUEST['drinking_water_supply'];
        $record->electricity = $_REQUEST['electricity'];
        $record->sewage = $_REQUEST['sewage'];
        $record->cable_line = $_REQUEST['cable_line'];
        $record->telecommunication = $_REQUEST['telecommunication'];
        $record->guard_house = $_REQUEST['guard_house'];
        $record->under_ground_water_tank = $_REQUEST['under_ground_water_tank'];
        $record->solar_water_heater = $_REQUEST['solar_water_heater'];
        
        $record->bigha = $_REQUEST['bigha'];
        $record->katha = $_REQUEST['katha'];
        $record->dhur = $_REQUEST['dhur'];
        $record->haath = $_REQUEST['haath'];
        $record->ropani = $_REQUEST['ropani'];
        $record->aana = $_REQUEST['aana'];
        $record->paisa = $_REQUEST['paisa'];
        $record->dam = $_REQUEST['dam'];
        
        $record->status = $_REQUEST['status'];
        $record->meta_title = $_REQUEST['meta_title'];
        $record->meta_keywords = $_REQUEST['meta_keywords'];
        $record->meta_description = $_REQUEST['meta_description'];
        $db->begin();
        if ($record->save()):$db->commit();
            $message = sprintf($GLOBALS['basic']['changesSaved_'], "Property '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action($message, 1, 4);
        else: $db->rollback();
            echo json_encode(array("action" => "notice", "message" => $GLOBALS['basic']['noChanges']));
        endif;
        break;

        case "addpropertyimage":
        $imageName  = !empty($_REQUEST['imageArrayname'])?$_REQUEST['imageArrayname']:'';
            $title      = !empty($_REQUEST['title'])?$_REQUEST['title']:'';
            if(!empty($imageName)):
            foreach($imageName as $key=>$val):
                $FimageName     = $imageName[$key];
                $Ftitle         = $title[$key]; 
                if(!empty($FimageName)):
                    
                $propertyid  = $_REQUEST['propertyid'];          
                $Property     = new PropertyImage();

                $Property->image         =  $FimageName;    
                $Property->title         = $Ftitle;
                $Property->status        = 1;
                $Property->propertyid     = $propertyid;
                $Property->sortorder     = PropertyImage::find_maximum_byparent("sortorder",$propertyid);  
                $res   =  $Property->save();
            if($res):$db->commit(); else: $db->rollback();endif;
                log_action("Property Image [".$Property->title."]".$GLOBALS['basic']['addedSuccess'],1,3);
                endif;
            endforeach;             
                echo json_encode(array("action"=>"success","message"=>$GLOBALS['basic']['changesSaved'],"propertyid"=>$propertyid));              
            else:
                echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
            endif;
               /* if(empty($_REQUEST['imageArrayname'])):             
                echo json_encode(array("action"=>"warning","message"=>"Required Upload Image !"));
                exit;                   
            endif;                                                    
                                  
                $db->begin();   
                                
                
            if ($Property->save()):$db->commit();
                 $message  = sprintf($GLOBALS['basic']['addedSuccess_'], "Property Image '".$Property->title."'");
                echo json_encode(array("action"=>"success","message"=>$GLOBALS['basic']['changesSaved'],"propertyid"=>$propertyid));
                log_action("Property Image [".$Property->title."]".$GLOBALS['basic']['addedSuccess'],1,3);
               
        
        else: $db->rollback();
            echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
        endif;*/
        break;
           

    case "delete":
        $id = $_REQUEST['id'];
        $record = Property::find_by_id($id);
        log_action("Property [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
        $db->begin();
        $res = $db->query("DELETE FROM tbl_property WHERE id='{$id}'");
        if ($res):$db->commit();
        else: $db->rollback();endif;
        reOrder("tbl_property", "sortorder");
       echo json_encode(array("action"=>"success","message"=>"Property  [".$record->title."]".$GLOBALS['basic']['deletedSuccess']));        
        break;

    // Module Setting Sections  >> <<
    case "toggleStatus":
        $id = $_REQUEST['id'];
        $record = Property::find_by_id($id);
        $record->status = ($record->status == 1) ? 0 : 1;
        $record->save();
        echo "";
        break;

        case "SubtoggleStatus":
            $id = $_REQUEST['id'];
            $record = PropertyImage::find_by_id($id);
            $record->status = ($record->status == 1) ? 0 : 1 ;
            $db->begin();                       
                $res   =  $record->save();
                if($res):$db->commit(); else: $db->rollback();endif;
            echo "";
        break;

    case "bulkToggleStatus":
        $id = $_REQUEST['idArray'];
        $allid = explode("|", $id);
        $return = "0";
        for ($i = 1; $i < count($allid); $i++) {
            $record = Property::find_by_id($allid[$i]);
            $record->status = ($record->status == 1) ? 0 : 1;
            $record->save();
        }
        echo "";
        break;
        
        case "deletepropertyimage":
            $id = $_REQUEST['id'];
            $Property = PropertyImage::find_by_id($id);
            log_action("Property Image  [".$Property->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
            $db->begin();               
            $res =  $db->query("DELETE FROM tbl_propertyimage WHERE id='{$id}'");
            if($res):$db->commit(); else: $db->rollback();endif;
            reOrderSub("tbl_propertyimage", "sortorder", "propertyid", $Property->propertyid);                 
            echo json_encode(array("action"=>"success","message"=>"PropertyImage [".$Property->title."]".$GLOBALS['basic']['deletedSuccess']));   
        break;
        
        case "toggleStatuspropertyimage":
            $id = $_REQUEST['id'];
            $Property = PropertyImage::find_by_id($id);
            $Property->status = ($Property->status == 1) ? 0 : 1 ;
            $db->begin();   
            $res = $Property->save();
            if($res):$db->commit(); else: $db->rollback();endif;
            echo "";
        break;

    case "bulkDelete":
        $id = $_REQUEST['idArray'];
        $allid = explode("|", $id);
        $return = "0";
        $db->begin();
        for ($i = 1; $i < count($allid); $i++) {
            $res = $db->query("DELETE FROM tbl_property WHERE id='" . $allid[$i] . "'");
            $return = 1;
        }
        if ($res) $db->commit(); else $db->rollback();
        reOrder("tbl_property", "sortorder");

        if ($return == 1):
            $message = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Property");
            echo json_encode(array("action" => "success", "message" => $message));
        else:
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['noRecords']));
        endif;
        break;

    case "sort":
        $id = $_REQUEST['id'];    // IS a line containing ids starting with : sortIds
        $sortIds = $_REQUEST['sortIds'];
        datatableReordering('tbl_property', $sortIds, "sortorder", '', '', 1);
        $message = sprintf($GLOBALS['basic']['sorted_'], "Property");
        echo json_encode(array("action" => "success", "message" => $message));
        break;

        case "sortpropertyimage":
            $id     = $_REQUEST['id'];  // IS a line containing ids starting with : sortIds
            $Property = PropertyImage::find_by_id($id);
            $sortIds = $_REQUEST['sortIds'];
            
            datatableReordering('tbl_propertyimage', $sortIds, "sortorder", 'propertyid', $Property->propertyid);
            echo json_encode(array("action"=>"success","message"=>$GLOBALS['basic']['sorted']));
        break;      
}
?>