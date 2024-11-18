<?php
$Tablename = "tbl_review"; // Database table name
if (isset($_GET['page']) && $_GET['page'] == "events" && isset($_GET['mode']) && $_GET['mode'] == "reviewlist"):
    $id = intval(addslashes($_GET['id']));
    ?>
    <h3>
        List Review ["<?php echo Events::field_by_id($id, 'title'); ?>"]
        <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);"
           onClick="AddNewReview(<?php echo $id; ?>);">
    <span class="glyph-icon icon-separator">
        <i class="glyph-icon icon-plus-square"></i>
    </span>
            <span class="button-content"> Add New </span>
        </a>
        <a class="loadingbar-demo btn medium bg-blue-alt float-right mrg5R" href="javascript:void(0);"
           onClick="viewPackagelist();">
    <span class="glyph-icon icon-separator">
        <i class="glyph-icon icon-arrow-circle-left"></i>
    </span>
            <span class="button-content"> Back </span>
        </a>
    </h3>
    <div class="my-msg"></div>
    <div class="example-box">
        <div class="example-code">
            <table cellpadding="0" cellspacing="0" border="0" class="table" id="subexample2">
                <thead>
                <tr>
                    <th style="display:none;"></th>
                    <th class="text-center"><input class="check-all" type="checkbox"/></th>
                    <th>Name</th>
                    <!--<th class="text-center">Homepage</th>-->
                    <th class="text-center"><?php echo $GLOBALS['basic']['action']; ?></th>
                </tr>
                </thead>

                <tbody>
                <?php $records = Review::find_by_sql("SELECT * FROM " . $Tablename . " WHERE event_id=" . $id . " ORDER BY sortorder DESC ");
                foreach ($records as $key => $record): ?>
                    <tr id="<?php echo $record->id; ?>">
                        <td style="display:none;"><?php echo $key + 1; ?></td>
                        <td><input type="checkbox" class="bulkCheckbox" bulkId="<?php echo $record->id; ?>"/></td>
                        <td>
                            <div class="col-md-7">
                                <a href="javascript:void(0);"
                                   onClick="editReview(<?php echo $record->event_id; ?>,<?php echo $record->id; ?>);"
                                   class="loadingbar-demo"
                                   title="<?php echo $record->name; ?>"><?php echo $record->name; ?></a>
                            </div>
                        </td>
                        <!--<td class="text-center">
                            <?php $homeImage = ($record->homepage == 1) ? "bg-green" : "bg-red";
                            $homeText = ($record->homepage == 1) ? $GLOBALS['basic']['clickUnpub'] : $GLOBALS['basic']['clickPub']; ?>
                            <a href="javascript:void(0);"
                               class="btn small <?php echo $homeImage; ?> tooltip-button reviewhomeToggler"
                               data-placement="top" title="<?php echo $homeText; ?>"
                               status="<?php echo $record->homepage; ?>" id="hmimgHolder_<?php echo $record->id; ?>"
                               moduleId="<?php echo $record->id; ?>">
                                <i class="glyph-icon icon-flag"></i>
                            </a>
                        </td>-->
                        <td class="text-center">
                            <?php
                            $statusImage = ($record->status == 1) ? "bg-green" : "bg-red";
                            $statusText = ($record->status == 1) ? $GLOBALS['basic']['clickUnpub'] : $GLOBALS['basic']['clickPub'];
                            ?>
                            <a href="javascript:void(0);"
                               class="btn small <?php echo $statusImage; ?> tooltip-button statusReview"
                               data-placement="top" title="<?php echo $statusText; ?>"
                               status="<?php echo $record->status; ?>" id="imgHolder_<?php echo $record->id; ?>"
                               moduleId="<?php echo $record->id; ?>">
                                <i class="glyph-icon icon-flag"></i>
                            </a>
                            <a href="javascript:void(0);" class="loadingbar-demo btn small bg-blue-alt tooltip-button"
                               data-placement="top" title="Edit"
                               onclick="editReview(<?php echo $record->event_id; ?>,<?php echo $record->id; ?>);">
                                <i class="glyph-icon icon-edit"></i>
                            </a>
                            <a href="javascript:void(0);" class="btn small bg-red tooltip-button" data-placement="top"
                               title="Remove" onclick="subreviewDelete(<?php echo $record->id; ?>);">
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
            <select name="dropdown" id="groupTaskField2" class="custom-select">
                <option value="0"><?php echo $GLOBALS['basic']['choseAction']; ?></option>
                <option value="subreviewdelete"><?php echo $GLOBALS['basic']['delete']; ?></option>
                <option value="subreviewtoggleStatus"><?php echo $GLOBALS['basic']['toggleStatus']; ?></option>
            </select>
        </div>
        <a class="btn medium primary-bg" href="javascript:void(0);" id="applySelected_btn2">
    <span class="glyph-icon icon-separator float-right">
      <i class="glyph-icon icon-cog"></i>
    </span>
            <span class="button-content"> Submit </span>
        </a>
    </div>

<?php elseif (isset($_GET['mode']) && $_GET['mode'] == "addEditreview"):
    $pid = addslashes($_REQUEST['id']);
    if (isset($_GET['subid']) and !empty($_GET['subid'])):
        $subpackageId = addslashes($_REQUEST['subid']);
        $reviewinfo = Review::find_by_id($subpackageId);
        $status = ($reviewinfo->status == 1) ? "checked" : " ";
        $unstatus = ($reviewinfo->status == 0) ? "checked" : " ";
        // $homepage = ($reviewinfo->homepage == 1) ? "checked" : " ";
        // $nothomepage = ($reviewinfo->homepage == 0) ? "checked" : " ";
        //echo "<pre>";print_r($reviewinfo);die();
    endif;
    ?>
    <h3>
        <?php echo (isset($_GET['subid'])) ? 'Edit Review' : 'Add Review'; ?>
        <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);"
           onClick="viewreviewlist(<?php echo $pid; ?>);">
    <span class="glyph-icon icon-separator">
        <i class="glyph-icon icon-arrow-circle-left"></i>
    </span>
            <span class="button-content"> Back </span>
        </a>
    </h3>

    <div class="my-msg"></div>
    <div class="example-box">
        <div class="example-code">
            <form action="" class="col-md-12 center-margin" id="review_frm">
                
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Full Name:
                        </label>
                    </div>
                    <div class="form-input col-md-20">
                        <input placeholder=" Full Name" class="col-md-6 validate[required]" type="text" name="name"
                               id="name" value="<?php echo !empty($reviewinfo->name) ? $reviewinfo->name : ""; ?>">
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Email:
                        </label>
                    </div>
                    <div class="form-input col-md-20">
                        <input placeholder="email" class="col-md-6 validate[required]" type="text" name="email"
                               id="email" value="<?php echo !empty($reviewinfo->email) ? $reviewinfo->email : ""; ?>">
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Message :
                        </label>
                    </div>
                    <div class="form-input col-md-8">
                        <textarea name="content" id="content"
                                  class="large-textarea"><?php echo !empty($reviewinfo->comments) ? $reviewinfo->comments : ""; ?></textarea>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Published :
                        </label>
                    </div>
                    <div class="form-checkbox-radio col-md-9">
                        <input type="radio" class="custom-radio" name="status" id="check1"
                               value="1" <?php echo !empty($status) ? $status : "checked"; ?>>
                        <label for="">Published</label>
                        <input type="radio" class="custom-radio" name="status" id="check0"
                               value="0" <?php echo !empty($unstatus) ? $unstatus : ""; ?>>
                        <label for="">Un-Published</label>
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
                       value="<?php echo !empty($reviewinfo->id) ? $reviewinfo->id : 0; ?>"/>
                <!-- <input type="hidden" name="package_currency" id="package_currency" value="USD" /> -->
                <input type="hidden" name="event_id" id="event_id"
                       value="<?php echo !empty($reviewinfo->event_id) ? $reviewinfo->event_id : $pid; ?>"/>
            </form>
        </div>
    </div>
    <script>
        var base_url = "<?php echo ASSETS_PATH; ?>";
        var editor_arr = ["content"];
        create_editor(base_url, editor_arr);
    </script>
<?php endif; ?>