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
        $record = new Training();

        $record->title 		= $_REQUEST['title'];
        $record->pdf		= $_REQUEST['imageArrayname'];
        $record->date 	    = $_REQUEST['date'];
        $record->date_to 	= $_REQUEST['date_to'];
        $record->given_to 	= $_REQUEST['to'];
        $record->status		= $_REQUEST['status'];
        $record->sortorder	= Training::find_maximum();
        $db->begin();
        if ($record->save()): $db->commit();
            $message = sprintf($GLOBALS['basic']['addedSuccess_'], "Training '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action("Training [" . $record->title . "]" . $GLOBALS['basic']['addedSuccess'], 1, 3);
        else: $db->rollback();
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['unableToSave']));
        endif;

        break;

    case "edit":
        $record = Training::find_by_id($_REQUEST['idValue']);

        $record->title 		= $_REQUEST['title'];
        $record->pdf		= $_REQUEST['imageArrayname'];
        $record->date 	    = $_REQUEST['date'];
        $record->date_to 	= $_REQUEST['date_to'];
        $record->given_to 	= $_REQUEST['to'];
        $record->status		= $_REQUEST['status'];

        $db->begin();
        if($record->save()): $db->commit();
            $message  = sprintf($GLOBALS['basic']['changesSaved_'], "Training '".$record->title."'");
            echo json_encode(array("action"=>"success","message"=>$message));
            log_action("Training [".$record->title."] Edit Successfully",1,4);
        else: $db->rollback(); echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
        endif;
        break;

    case "delete":
        $id = $_REQUEST['id'];
        $record = Training::find_by_id($id);
        $db->begin();
        $res = $db->query("DELETE FROM tbl_training WHERE id='{$id}'");
        if($res)$db->commit();else $db->rollback();
        reOrder("tbl_training", "sortorder");

        $message  = sprintf($GLOBALS['basic']['deletedSuccess_'], "Training '".$record->title."'");
        echo json_encode(array("action"=>"success","message"=>$message));
        log_action("Training [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
        break;

    // Module Setting Sections  >> <<
    case "toggleStatus":
        $id = $_REQUEST['id'];
        $record = Training::find_by_id($id);
        $record->status = ($record->status == 1) ? 0 : 1 ;
        $record->save();
        echo "";
        break;

    case "bulkToggleStatus":
        $id = $_REQUEST['idArray'];
        $allid = explode("|", $id);
        $return = "0";
        for($i=1; $i<count($allid); $i++){
            $record = Training::find_by_id($allid[$i]);
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
            $record = Training::find_by_id($allid[$i]);
            log_action("Training [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
            $res = $db->query("DELETE FROM tbl_training WHERE id='".$allid[$i]."'");
            $return = 1;
        }
        if($res)$db->commit();else $db->rollback();
        reOrder("tbl_training", "sortorder");

        if($return==1):
            $message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Training");
            echo json_encode(array("action"=>"success","message"=>$message));
        else:
            echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
        endif;
        break;

    case "sort":
        $id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
        $sortIds = $_REQUEST['sortIds'];
        datatableReordering('tbl_training', $sortIds, "sortorder", '', '',1);
        $message  = sprintf($GLOBALS['basic']['sorted_'], "Training");
        echo json_encode(array("action"=>"success","message"=>$message));
        break;
}
?>