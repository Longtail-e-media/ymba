<?php 
	// Load the header files first
	header("Expires: 0"); 
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); 
	header("cache-control: no-store, no-cache, must-revalidate"); 
	header("Pragma: no-cache");

	// Load necessary files then...
	require_once('../initialize.php');
	
	$action = $_REQUEST['action'];
	
	switch($action) 
	{			
		case "add":
			
			$District = new District();
			
			$District->slug 			= create_slug($_REQUEST['title']);
			$District->title    		= $_REQUEST['title'];	
			
			$District->status			= $_REQUEST['status'];
			$District->sortorder		= District::find_maximum();
			
			
			$checkDupliTitle = District::checkDupliTitle($District->title);			
			if($checkDupliTitle):
				echo json_encode(array("action"=>"warning","message"=>"District Already Exists."));		
				exit;		
			endif;
			
			$db->begin();
			if($District->save()): 
				

					$db->commit();
			   $message  = sprintf($GLOBALS['basic']['addedSuccess_'], "District '".$District->title."'");
			echo json_encode(array("action"=>"success","message"=>$message));
				log_action("District [".$District->title."]".$GLOBALS['basic']['addedSuccess'],1,3);
			else: $db->rollback();
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
			endif;				
		break;
		
		case "edit":			
			$District = District::find_by_id($_REQUEST['idValue']);
			
			if($District->title!=$_REQUEST['title']){
				$checkDupliTitle = District::checkDupliTitle($_REQUEST['title']);
				if($checkDupliTitle):
					echo json_encode(array("action"=>"warning","message"=>"District is already exist."));		
					exit;		
				endif;
			}

			
			$District->slug 	   = create_slug($_REQUEST['title']);
			$District->title    = $_REQUEST['title'];	
			
			$District->status   = $_REQUEST['status'];	
			
			$db->begin();				
			if($District->save()):$db->commit();	
			   $message  = sprintf($GLOBALS['basic']['changesSaved_'], "District '".$District->title."'");
			   echo json_encode(array("action"=>"success","message"=>$message));
			   log_action("District ".$District->title." Edit Successfully",1,4);
			else:$db->rollback();echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;							
		break;
								
		case "delete":
			$id = $_REQUEST['id'];
			$record = District::find_by_id($id);
			log_action("District  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
			$db->begin();
			$res = $db->query("DELETE FROM tbl_district WHERE id='{$id}'");
  		    if($res):$db->commit();	else: $db->rollback();endif;
			reOrder("tbl_district", "sortorder");						
			echo json_encode(array("action"=>"success","message"=>"District  [".$record->title."]".$GLOBALS['basic']['deletedSuccess']));							
		break;
		
		case "toggleStatus":
			$id = $_REQUEST['id'];
			$record = District::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$db->begin();						
				$res   =  $record->save();
				   if($res):$db->commit();	else: $db->rollback();endif;
			echo "";
		break;

		case "bulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = District::find_by_id($allid[$i]);
				$record->status = ($record->status == 1) ? 0 : 1 ;
				$record->save();
			}
			echo "";
		break;
			
		case "bulkDelete":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			$db->begin();
			for($i=1; $i<count($allid); $i++){
						$db->query("DELETE FROM tbl_location WHERE type='".$allid[$i]."'");
				$res  = $db->query("DELETE FROM tbl_district WHERE id='".$allid[$i]."'");
				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();
			reOrder("tbl_district", "sortorder");
			
			if($return==1):
			    $message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "District"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;
				
		case "sort":
			$id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
			$sortIds = $_REQUEST['sortIds'];
			datatableReordering('tbl_district', $sortIds, "sortorder", '', '',1);
			$message  = sprintf($GLOBALS['basic']['sorted_'], "District "); 
			echo json_encode(array("action"=>"success","message"=>$message));
		break;				

		/*********************** Location Transaction Section *************************/
		case "addLocation":
			$record	= new Location();

				
			$record->type		= $_REQUEST['type'];
			$record->slug 			= create_slug($_REQUEST['title']);
			$record->title 			= $_REQUEST['title'];
				
			$record->status			= $_REQUEST['status'];
			
			$record->sortorder		= Location::find_maximum("sortorder");							
			
 							
		
			$db->begin();
			if($record->save()): $db->commit();
				$message  = sprintf($GLOBALS['basic']['addedSuccess_'], "Location '".$record->title."'");
				echo json_encode(array("action"=>"success","message"=>$message));
				log_action($message,1,3);
			else: $db->rollback(); echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
			endif;								
		break;

		case "editLocation":
			$record = Location::find_by_id($_REQUEST['idValue']);
			
			$record->type 			= $_REQUEST['type'];
			$record->slug 			= create_slug($_REQUEST['title']);
			$record->title 			= $_REQUEST['title'];
			
			$record->status			= $_REQUEST['status'];	

			
					
			
			$db->begin();

			if($record->save()):
					$db->commit();
			   $message  = sprintf($GLOBALS['basic']['changesSaved_'], "Location '".$record->title."'");
			   echo json_encode(array("action"=>"success","message"=>$message));
			   log_action($message,1,4);
			else: $db->rollback();echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;	
		break;

		case "deleteLocation":
			$id = $_REQUEST['id'];
			$record = Location::find_by_id($id);
			log_action("Location [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
			$db->begin();

			$db->query("DELETE FROM tbl_location WHERE id='{$id}'");
  		    if(1):$db->commit();	else: $db->rollback();endif;
			reOrder("tbl_location", "sortorder");						
			echo json_encode(array("action"=>"success","message"=>"Location [".$record->title."]".$GLOBALS['basic']['deletedSuccess']));							
		break;

		case "SubtoggleStatus":
			$id = $_REQUEST['id'];
			$record = Location::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$db->begin();						
				$res   =  $record->save();
				if($res):$db->commit();	else: $db->rollback();endif;
			echo "";
		break;

		case "subbulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = Location::find_by_id($allid[$i]);
				$record->status = ($record->status == 1) ? 0 : 1 ;
				$record->save();
			}
			echo "";
		break;
			
		case "subbulkDelete":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			$db->begin();
			for($i=1; $i<count($allid); $i++){
				$record = Location::find_by_id($allid[$i]);
				$res  = $db->query("DELETE FROM tbl_location WHERE id='".$allid[$i]."'");				
				reOrderSub("tbl_location", "sortorder", "type",$record->type);

				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();

			if($return==1):
			    $message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Package"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;

		case "subSort":
			$id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
			$sortIds = $_REQUEST['sortIds'];
			$posId   = Location::field_by_id($id,'type');
			datatableReordering('tbl_location', $sortIds, "sortorder", "type",$posId,1);
			$message  = sprintf($GLOBALS['basic']['sorted_'], "Location"); 
			echo json_encode(array("action"=>"success","message"=>$message));
		break;	

		
	}
?>