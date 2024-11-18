<link href="<?php echo ASSETS_PATH; ?>uploadify/uploadify.css" rel="stylesheet" type="text/css"/>
<?php
if (isset($_GET['page']) && $_GET['page'] == "property" && isset($_GET['mode']) && $_GET['mode'] == "propertyImageList"):
    $id = intval(addslashes($_GET['id']));
    $prRec = Property::find_by_id($id);
        ?>
        <h3>
            List Property Images ["<?php echo $prRec->title; ?>"]
            <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);"
               onClick="viewpropertylist();">
    <span class="glyph-icon icon-separator">
    	<i class="glyph-icon icon-arrow-circle-left"></i>
    </span>
                <span class="button-content"> Back </span>
            </a>
        </h3>
        <div class="divider"></div>
        <div class="my-msg"></div>

        
        <form action="" class="col-md-12 center-margin" method="post" id="propertyimage_frm">
            <div class="row">
                <div class="form-row col-md-12">
                    <div class="form-input col-md-10">
                        <input type="file" name="users_upload" id="users_upload" class="transparent no-shadow">
                    </div>
                    <div class="form-input float-right">
                        <button type="submit" name="submit"
                                class="btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4 btn-submit"
                                id="btn-submit1" title="Save">
                    <span class="button-content">
                        Save
                    </span>
                        </button>
                    </div>
                </div>
                <input type="hidden" name="propertyid" value="<?php echo $prRec->id; ?>" class="validate[required]">
                
                <!-- Upload user image preview -->
                <div id="previewUser_Image"></div>
            </div>
        </form>
         <?php
        clearImages("tbl_propertyimage", "property/propertyimage");
        clearImages("tbl_propertyimage", "property/propertyimage/thumbnails");
        $saveGallery = PropertyImage::find_by_sql("SELECT * FROM tbl_propertyimage  WHERE propertyid='{$id}' ORDER BY sortorder ASC");
        if ($saveGallery):
            ?>
            <div class="row">
                <div class="col-md-12 subImagegallery-sort">
                    <?php
                    $ic = 1;
                    foreach ($saveGallery as $galleryRow):

                        ?>
                        <div class="col-md-3 removeSavedimg<?php echo $galleryRow->id; ?> oldsort"
                             id="<?php echo $galleryRow->id; ?>" csort="<?php echo $galleryRow->sortorder; ?>">
                            <div class="infobox info-bg">
                                <div class="button-group" data-toggle="buttons">
                <span class="float-left"><?php
                    $filesize = filesize(SITE_ROOT . "images/property/propertyimage/" . $galleryRow->image);
                    echo 'Size : ' . getFileFormattedSize($filesize);
                    ?>
                </span>
                                    <a class="btn small float-right" href="javascript:void(0);"
                                       onclick="deleteSavedimage(<?php echo $galleryRow->id; ?>);">
                                        <i class="glyph-icon icon-trash-o"></i>
                                    </a>
                                    <?php
                                    $imageStatus = ($galleryRow->status == 1) ? 'icon-check-circle-o' : 'icon-clock-os-circle-o';
                                    ?>
                                    <a class="btn small float-right imageStatusToggle" href="javascript:void(0);"
                                       rowId="<?php echo $galleryRow->id; ?>"
                                       status="<?php echo $galleryRow->status; ?>">
                                        <i class="glyph-icon <?php echo $imageStatus; ?>"
                                           id="toggleImg<?php echo $galleryRow->id; ?>"></i>
                                    </a>
                                </div>
                                <img src="<?php echo IMAGE_PATH . 'property/propertyimage/thumbnails/' . $galleryRow->image; ?>"
                                     style="width:100%"/>
                                <span><?php echo $galleryRow->title; ?></span>
                            </div>
                        </div>
                        
                    <?php endforeach; ?>
                </div>
            </div>
        <?php endif; ?>

        <script type="text/javascript" src="<?php echo ASSETS_PATH; ?>uploadify/jquery.uploadify.min.js"></script>
        <script type="text/javascript">
            // <![CDATA[
            $(document).ready(function () {
                $('#users_upload').uploadify({
                    'swf': '<?php echo ASSETS_PATH;?>uploadify/uploadify.swf',
                    'uploader': '<?php echo ASSETS_PATH;?>uploadify/uploadify.php',
                    'formData': {
                        PROJECT: '<?php echo SITE_FOLDER;?>',
                        targetFolder: 'images/property/propertyimage/',
                        thumb_width: 105,
                        thumb_height: 80
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
                        $.post('<?php echo BASE_URL;?>apanel/property/uploaded_propertyimage.php', {imagefile: filename}, function (msg) {
                            $('#previewUser_Image').append(msg).show();
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
         <?php endif; ?>

