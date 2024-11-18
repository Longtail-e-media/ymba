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
			$record = new Events();

            $record->slug 		= create_slug($_REQUEST['title']);
            $title = preg_replace('/\'/', '&apos;', $_REQUEST['title']);
			$record->title 			= $title;
			$record->brief 			= $_REQUEST['brief'];
			$record->event_stdate 	= $_REQUEST['event_stdate'];
            $record->published_in 	= $_REQUEST['published_in'];
            // $record->linktype 		= $_REQUEST['linktype'];
            // $record->linksrc 		= $_REQUEST['linksrc'];
            $record->image 			= serialize(array_values(array_filter($_REQUEST['imageArrayname'])));
            $record->banner_image 	= serialize(array_values(array_filter($_REQUEST['bannerimageArrayname'])));
            $record->content		= $_REQUEST['content'];
            // $record->type 			= $_REQUEST['type'];
            $record->type 			= 1;
            $record->homepage		= $_REQUEST['homepage'];
            $record->status			= $_REQUEST['status'];
			$record->meta_keywords		= $_REQUEST['meta_keywords'];
			$record->meta_description	= $_REQUEST['meta_description'];
			
			$record->sortorder	= Events::find_maximum();
			$record->added_date = registered();			
			
			$checkDupliName = Events::checkDupliName($record->title);
            if ($checkDupliName):
                echo json_encode(array("action" => "warning", "message" => "Events Title Already Exists."));
                exit;
            endif;

            $db->begin();
            if ($record->save()): $db->commit();
                $message = sprintf($GLOBALS['basic']['addedSuccess_'], "Event '" . $record->title . "'");
                echo json_encode(array("action" => "success", "message" => $message));
                log_action("Events [" . $record->title . "]" . $GLOBALS['basic']['addedSuccess'], 1, 3);
            else:
                echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['unableToSave']));
            endif;
		break;
			
		case "edit":
			$record = Events::find_by_id($_REQUEST['idValue']);

            $title = preg_replace('/\'/', '&apos;', $_REQUEST['title']);
            if ($record->title != $title) {
                $checkDupliName = Events::checkDupliName($title);
                if ($checkDupliName):
                    echo json_encode(array("action" => "warning", "message" => "Events title is already exist."));
                    exit;
                endif;
            }
							
			$record->slug 		= create_slug($_REQUEST['title']);
			$record->title 			= $title;
			$record->brief 			= $_REQUEST['brief'];
			$record->event_stdate 	= $_REQUEST['event_stdate'];
            $record->published_in 	= $_REQUEST['published_in'];
            // $record->linktype 		= $_REQUEST['linktype'];
            // $record->linksrc 		= $_REQUEST['linksrc'];
            $record->image 			= serialize(array_values(array_filter($_REQUEST['imageArrayname'])));
            $record->banner_image 	= serialize(array_values(array_filter($_REQUEST['bannerimageArrayname'])));
            $record->content		= $_REQUEST['content'];
            // $record->type 			= $_REQUEST['type'];
            $record->type 			= 1;
            $record->homepage		= $_REQUEST['homepage'];
            $record->status			= $_REQUEST['status'];
			$record->meta_keywords		= $_REQUEST['meta_keywords'];
			$record->meta_description	= $_REQUEST['meta_description'];
			
			$db->begin();
			if($record->save()):$db->commit();
			   $message  = sprintf($GLOBALS['basic']['changesSaved_'], "Event '".$record->title."'");
			   echo json_encode(array("action"=>"success","message"=>$message));
			   log_action("Events [".$record->title."] Edit Successfully",1,4);
			else:
				echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;
		break;
			
		case "delete":
			$id = $_REQUEST['id'];
			$record = Events::find_by_id($id);
			$db->begin();
			$res = $db->query("DELETE FROM tbl_events WHERE id='{$id}'");
			if($res):$db->commit();	else: $db->rollback();endif;			
			reOrder("tbl_events", "sortorder");		
			$message  = sprintf($GLOBALS['basic']['deletedSuccess_'], "Event '".$record->title."'");
			echo json_encode(array("action"=>"success","message"=>$message));					
			log_action("Events  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
		break;
		
		// Module Setting Sections  >> <<
		case "toggleStatus":
			$id = $_REQUEST['id'];
			$record = Events::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$record->save();
			echo "";
		break;
			
		case "bulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = Events::find_by_id($allid[$i]);
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
				$record = Events::find_by_id($allid[$i]);
				log_action("Events  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
				
				$res  = $db->query("DELETE FROM tbl_events WHERE id='".$allid[$i]."'");
				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();
			reOrder("tbl_events", "sortorder");
			
			if($return==1):
				$message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Event"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;
			
		case "sort":
			$id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
			$sortIds = $_REQUEST['sortIds'];
			datatableReordering('tbl_events', $sortIds, "sortorder", '', '',1);
			$message  = sprintf($GLOBALS['basic']['sorted_'], "Events"); 
			echo json_encode(array("action"=>"success","message"=>$message));
		break;
		
		case "addreview":
			$record = new Review();
			
			$record->event_id 	    = $_REQUEST['event_id'];
			$record->comments 		= $_REQUEST['content'];
			$record->name 			= $_REQUEST['name'];
			$record->email 			= $_REQUEST['email'];
			$record->status			= $_REQUEST['status'];	
			
			$record->sortorder		= Review::find_maximum_byparent("sortorder", $_REQUEST['event_id']);
       		$record->added_date 	= registered();
			
						
			$db->begin();
			if($record->save()): $db->commit();
			   $message  = sprintf($GLOBALS['basic']['addedSuccess_'], "Review '".$record->name."'");
			echo json_encode(array("action"=>"success","message"=>$message));
			else: $db->rollback();
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
			endif;
		break;
		
		case "addReviewFront":
            $record = new Review();
            
            $record->event_id   	= $_REQUEST['event_id'];
            $record->comments 		= $_REQUEST['comments'];
            $record->name 			= $_REQUEST['name'];
            $record->email 			= $_REQUEST['email'];
            $record->status			= 0;
            $record->sortorder		= Review::find_maximum_byparent("sortorder", $_REQUEST['event_id']);
            $record->added_date 	= registered();


            $db->begin();
            if($record->save()): $db->commit();
                echo json_encode(array("action"=>"success","message"=>"Your Comment has been successfully received !"));
            else: $db->rollback();
                echo json_encode(array("action"=>"error","message"=>"Unable to send Cooment. Please try again."));
            endif;
        break;
		
		case "editreview":
			$record = Review::find_by_id($_REQUEST['idValue']);
			
			$record->event_id   	= $_REQUEST['event_id'];
			$record->comments 		= $_REQUEST['content'];
			$record->name 			= $_REQUEST['name'];
			$record->email 			= $_REQUEST['email'];
			$record->status			= $_REQUEST['status'];	

			$db->begin();
			if($record->save()): $db->commit();
			   $message  = sprintf($GLOBALS['basic']['changesSaved_'], "Review '".$record->name."'");
			   echo json_encode(array("action"=>"success","message"=>$message));
			else: $db->rollback(); echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;
		break;
		
		case "togglehomeReview":
            $id = $_REQUEST['id'];
            $record = Review::find_by_id($id);
            $record->homepage = ($record->homepage == 1) ? 0 : 1 ;
            $record->save();
            echo "";
        break;

		case "deletereview":
			$id = $_REQUEST['id'];
			$record = Review::find_by_id($id);
			log_action("Review [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
			$db->begin();

			$res   = $db->query("DELETE FROM tbl_review WHERE id='{$id}'");			
  		    if($res):$db->commit();	else: $db->rollback();endif;
			reOrder("tbl_review", "sortorder");						
			echo json_encode(array("action"=>"success","message"=>"Review [".$record->title."]".$GLOBALS['basic']['deletedSuccess']));							
		break;

		case "SubreviewtoggleStatus":
			$id = $_REQUEST['id'];
			$record = Review::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$db->begin();						
				$res   =  $record->save();
				if($res):$db->commit();	else: $db->rollback();endif;
			echo "";
		break;

		case "subreviewbulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = Review::find_by_id($allid[$i]);
				$record->status = ($record->status == 1) ? 0 : 1 ;
				$record->save();
			}
			echo "";
		break;
			
		case "subreviewbulkDelete":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			$db->begin();
			for($i=1; $i<count($allid); $i++){
				$record = Review::find_by_id($allid[$i]);
				$res  = $db->query("DELETE FROM tbl_review WHERE id='".$allid[$i]."'");				
				reOrderSub("tbl_review", "sortorder", "event_id",$record->event_id);

				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();

			if($return==1):
			    $message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Itinerary"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;
	}
?>