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
        $record = new Logo();

        if (empty($_REQUEST['imageArrayname'])):
            echo json_encode(array("action" => "warning", "message" => "Required Upload Image !"));
            exit;
        endif;

        $record->title          = $_REQUEST['title'];
        $record->category_id    = $_REQUEST['category_id'];
        $record->image          = $_REQUEST['imageArrayname'];
        $record->linktype 		= $_REQUEST['linktype'];
        $record->linksrc        = $_REQUEST['linksrc'];
        $record->status         = $_REQUEST['status'];
        $record->sortorder      = Logo::find_maximum();
        $record->added_date     = registered();

        $checkDupliName = Logo::checkDupliName($record->title);
        if ($checkDupliName):
            echo json_encode(array("action" => "warning", "message" => "Involvement Title Already Exists."));
            exit;
        endif;

        $db->begin();
        if ($record->save()): $db->commit();
            $message = sprintf($GLOBALS['basic']['addedSuccess_'], "Logo '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action($message, 1, 3);
        else:
            $db->rollback();
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['unableToSave']));
        endif;
        break;

    case "edit":
        $record = Logo::find_by_id($_REQUEST['idValue']);

        if ($record->title != $_REQUEST['title']) {
            $checkDupliName = Logo::checkDupliName($_REQUEST['title']);
            if ($checkDupliName):
                echo json_encode(array("action" => "warning", "message" => "Involvement title already exists."));
                exit;
            endif;
        }

        $record->title          = $_REQUEST['title'];
        $record->category_id    = $_REQUEST['category_id'];
        $record->image          = $_REQUEST['imageArrayname'];
        $record->linktype 		= $_REQUEST['linktype'];
        $record->linksrc        = $_REQUEST['linksrc'];
        $record->status         = $_REQUEST['status'];

        $db->begin();
        if ($record->save()):$db->commit();
            $message = sprintf($GLOBALS['basic']['changesSaved_'], "Logo '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action($message, 1, 4);
        else: $db->rollback();
            echo json_encode(array("action" => "notice", "message" => $GLOBALS['basic']['noChanges']));
        endif;
        break;

    case "delete":
        $id = $_REQUEST['id'];
        $record = Logo::find_by_id($id);
        $db->begin();
        $res = $db->query("DELETE FROM tbl_logo WHERE id='{$id}'");
        if ($res):$db->commit();
        else: $db->rollback();endif;
        reOrder("tbl_logo", "sortorder");
        $message = sprintf($GLOBALS['basic']['deletedSuccess_'], "Logo '" . $record->title . "'");
        echo json_encode(array("action" => "success", "message" => $message));
        log_action("Logo [" . $record->title . "]" . $GLOBALS['basic']['deletedSuccess'], 1, 6);
        break;

    // Module Setting Sections  >> <<
    case "toggleStatus":
        $id = $_REQUEST['id'];
        $record = Logo::find_by_id($id);
        $record->status = ($record->status == 1) ? 0 : 1;
        $record->save();
        echo "";
        break;

    case "bulkToggleStatus":
        $id = $_REQUEST['idArray'];
        $allid = explode("|", $id);
        $return = "0";
        for ($i = 1; $i < count($allid); $i++) {
            $record = Logo::find_by_id($allid[$i]);
            $record->status = ($record->status == 1) ? 0 : 1;
            $record->save();
        }
        echo "";
        break;

    case "bulkDelete":
        $id = $_REQUEST['idArray'];
        $allid = explode("|", $id);
        $return = "0";
        $db->begin();
        for ($i = 1; $i < count($allid); $i++) {
            $res = $db->query("DELETE FROM tbl_logo WHERE id='" . $allid[$i] . "'");
            $return = 1;
        }
        if ($res) $db->commit(); else $db->rollback();
        reOrder("tbl_logo", "sortorder");

        if ($return == 1):
            $message = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Logo");
            echo json_encode(array("action" => "success", "message" => $message));
        else:
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['noRecords']));
        endif;
        break;

    case "sort":
        $id = $_REQUEST['id'];    // IS a line containing ids starting with : sortIds
        $sortIds = $_REQUEST['sortIds'];
        datatableReordering('tbl_logo', $sortIds, "sortorder", '', '', 1);
        $message = sprintf($GLOBALS['basic']['sorted_'], "Logo");
        echo json_encode(array("action" => "success", "message" => $message));
        break;
}
?>