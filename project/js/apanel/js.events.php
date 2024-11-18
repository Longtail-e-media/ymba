<script language="javascript">

    function getLocation() {
        return '<?php echo BASE_URL;?>includes/controllers/ajax.events.php';
    }

    function getTableId() {
        return 'table_dnd';
    }

    $(document).ready(function () {
        oTable = $('#example').dataTable({
            "bJQueryUI": true,
            "sPaginationType": "full_numbers"
        }).rowReordering({
            sURL: "<?php echo BASE_URL;?>includes/controllers/ajax.events.php?action=sort",
            fnSuccess: function (message) {
                var msg = jQuery.parseJSON(message);
                showMessage(msg.action, msg.message);
            }
        });
    });

    /***************************************** Events Create Date *******************************************/
    $(document).ready(function () {

        $.datepicker.setDefaults({dateFormat: 'yy-mm-dd', firstDay: 1});
        $('#event_stdate').datepicker({
            // minDate: 0,
            changeMonth: true, changeYear: true, showButtonPanel: true
            // onSelect: function (selectedDate) {
            //     var minDate = $(this).datepicker('getDate');
            //     if (minDate) {
            //         minDate.setDate(minDate.getDate() + 1);
            //     }
            //     $('#event_endate').datepicker('option', 'minDate', minDate || 1); // Date + 1 or tomorrow by default
            // }
        });
        $('#event_endate').datepicker({
            minDate: 1, changeMonth: true, changeYear: true, onSelect: function (selectedDate) {
                var maxDate = $(this).datepicker('getDate');
                if (maxDate) {
                    maxDate.setDate(maxDate.getDate() - 1);
                }
                $('#event_stdate').datepicker('option', 'maxDate', maxDate); // Date - 1
            }
        });
    });

    /*************************************** Toggle AddEdit Form ********************************************/
    function toggleMetadata() {
        $(".metadata").slideToggle("slow", function () {
        });
    }

    $(document).ready(function () {
        $('.btn-submit').on('click', function () {
            var actVal = $(this).attr('btn-action');
            $('#idValue').attr('myaction', actVal);
        })
        // form submisstion actions
        jQuery('#events_frm').validationEngine({
            autoHidePrompt: true,
            scroll: true,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    $('.btn-submit').attr('disabled', 'true');
                    var action = ($('#idValue').val() == 0) ? "action=add&" : "action=edit&";
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();

                    var data = $('#events_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                $('.btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                var actionId = $('#idValue').attr('myaction');
                                if (actionId == 2)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>events/list";
                                    }, 3000);
                                if (actionId == 1)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>events/addEdit";
                                    }, 3000);
                                if (actionId == 0)
                                    setTimeout(function () {
                                        window.location.href = "";
                                    }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        })
        
        // REview form
        jQuery('#review_frm').validationEngine({
            prettySelect: true,
            autoHidePrompt: true,
            useSuffix: "_chosen",
            promptPosition: "bottomLeft",
            scroll: true,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    var Re = $("#event_id").val();
                    $('.btn-submit').attr('disabled', 'true');
                    var action = ($('#idValue').val() == 0) ? "action=addreview&" : "action=editreview&";
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();

                    var data = $('#review_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                $('.btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                var actionId = $('#idValue').attr('myaction');
                                if (actionId == 2)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>events/reviewlist/" + Re;
                                    }, 3000);
                                if (actionId == 1)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>events/addEditreview/" + Re;
                                    }, 3000);
                                if (actionId == 0)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>eventse/reviewlist/" + Re;
                                    }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        });

        function checkIfAnyCheckBoxChecked() {
            var countCheckBox = 0;
            $.each($("input.bulkCheckbox:checked"), function () {
                countCheckBox++;
            });
            if (countCheckBox > 0) {
            } else {
                showMessage('warning', 'Please select at least on row!!.');
                return false;
            }
        }
        /************************************* Bulk Transactions  for review*******************************************/
        $('#applySelected_btn2').on("click", function () {
            var action = $('#groupTaskField2').val();
            if (action == '0') {
                showMessage('warning', 'Please select an action!!.');
            }
            var idArray = '0';
            $('.bulkCheckbox').each(function () {
                if ($(this).is(":checked")) {
                    idArray += "|" + $(this).attr('bulkId');
                }
            });
            checkIfAnyCheckBoxChecked();
            if (idArray != '0') {

                switch (action) {

                    case "subreviewtoggleStatus":
                        $('.record-checkbox').each(function () {
                            if ($(this).is(":checked")) {
                                $('#imgHolder_' + $(this).attr('bulkId')).html('<img src="../images/apanel/loadwheel.gif" />');
                            }
                        });
                        $.ajax({
                            type: "POST",
                            url: getLocation(),
                            data: "action=subreviewbulkToggleStatus&idArray=" + idArray,
                            success: function (msg) {
                                var myMessage = idArray.split("|");
                                var counter = myMessage.length;
                                for (i = 1; i < counter; i++) {
                                    var status = $('#imgHolder_' + myMessage[i]).attr('status');
                                    newStatus = (status == 1) ? 0 : 1;
                                    $('#imgHolder_' + myMessage[i]).attr({'status': newStatus});
                                    if (status == 1) {
                                        $('#imgHolder_' + myMessage[i]).removeClass("bg-green");
                                        $('#imgHolder_' + myMessage[i]).addClass("bg-red");
                                        $('#imgHolder_' + myMessage[i]).attr("data-original-title", "Click to Publish");
                                    } else {
                                        $('#imgHolder_' + myMessage[i]).removeClass("bg-red");
                                        $('#imgHolder_' + myMessage[i]).addClass("bg-green");
                                        $('#imgHolder_' + myMessage[i]).attr("data-original-title", "Click to Un-publish");
                                    }
                                }
                                showMessage('success', 'Status has been toggled.');
                            }
                        });
                        break;

                    case "subreviewdelete":
                        $('.MsgTitle').html('Do you want to delete the selected rows?');
                        $('.pText').html('Click on yes button to delete this rows permanently.!!');
                        $('.divMessageBox').fadeIn();
                        $('.MessageBoxContainer').fadeIn(1000);

                        $(".botTempo").on("click", function () {
                            var popAct = $(this).attr("id");
                            if (popAct == 'yes') {
                                subreviewdeleteSelectedRecords(idArray);
                            }
                            $('.divMessageBox').fadeOut();
                            $('.MessageBoxContainer').fadeOut(1000);
                        });
                        break;
                } // end switch section
                reStructureList(getTableId());
            } // end if section
        });
        
        $('.statusReview').on('click', function () {
            var id = $(this).attr('moduleId');
            var status = $(this).attr('status');
            newStatus = (status == 1) ? 0 : 1;
            $.ajax({
                type: "POST",
                url: getLocation(),
                data: "action=SubreviewtoggleStatus&id=" + id,
                success: function (msg) {
                }
            });
            $(this).attr({'status': newStatus});
            if (status == 1) {
                $('#imgHolder_' + id).removeClass("bg-green");
                $('#imgHolder_' + id).addClass("bg-red");
                $(this).attr("data-original-title", "Click to Publish");
            } else {
                $('#imgHolder_' + id).removeClass("bg-red");
                $('#imgHolder_' + id).addClass("bg-green");
                $(this).attr("data-original-title", "Click to Un-publish");
            }
        });
        
        function subreviewdeleteSelectedRecords(idArray) {
            $.ajax({
                type: "POST",
                dataType: "JSON",
                url: getLocation(),
                data: "action=subreviewbulkDelete&idArray=" + idArray,
                success: function (data) {
                    var msg = eval(data);
                    if (msg.action == 'success') {
                        showMessage(msg.action, msg.message);
                        var myMessage = idArray.split("|");
                        var counter = myMessage.length;
                        for (i = 1; i < counter; i++) {
                            $('#' + myMessage[i]).remove();
                            reStructureList(getTableId());
                        }
                    }
                    if (msg.action == 'error') {
                        showMessage(msg.action, msg.message);
                    }
                }
            });
        }
    });

    // Edit records
    function editRecord(Re) {
        $.ajax({
            type: "POST",
            dataType: "JSON",
            url: getLocation(),
            data: 'action=editExistsRecord&id=' + Re,
            success: function (data) {
                var msg = eval(data);
                $("#title").val(msg.title);
                $("#idValue").val(msg.editId);
            }
        });
    }

    // Deleting Record
    function recordDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "event")?>');
        $('.pText').html('Click on yes button to delete this event permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=delete&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }
    
    /***Review****/
    function subreviewDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Review")?>');
        $('.pText').html('Click on yes button to delete this review permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deletereview&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    /***************************************** View Events Lists *******************************************/
    function vieweventslist() {
        window.location.href = "<?php echo ADMIN_URL?>events/list";
    }

    /***************************************** Add New Events *******************************************/
    function AddNewEvents() {
        window.location.href = "<?php echo ADMIN_URL?>events/addEdit";
    }

    /***************************************** Edit records *****************************************/
    function editRecord(Re) {
        window.location.href = "<?php echo ADMIN_URL?>events/addEdit/" + Re;
    }

    /******************************** Remove temp upload image ********************************/
    function deleteTempimage(Re) {
        $('#previewimage' + Re).fadeOut(1000, function () {
            $('#previewimage' + Re).remove();
        });
    }

    /******************************** Remove User saved Package images ********************************/
    function deleteSavedimage(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedimg' + Re).fadeOut(1000, function () {
                    $('#removeSavedimg' + Re).remove();
                    // $('.uploader').fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    /***************************************** Link Type Choose *******************************************/
    function linkTypeSelect(Re) {
        if (Re == 0) {
            $('#linkPage_chosen').removeClass("hide");
            ($('#linksrc').val() == 'http://www.') ? $('#linksrc').val('') : null;
        } else {
            $('#linkPage_chosen').addClass("hide");
            ($('#linksrc').val() == '') ? $('#linksrc').val("http://www.") : null;
        }
    }

    $(document).ready(function () {
        $('#linkPage').change(function () {
            $('#linksrc').val($(this).val());
        });
    });
    
    function viewreviewlist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>events/reviewlist/" + Re;
    }
    
    function AddNewReview(Re) {
        window.location.href = "<?php echo ADMIN_URL?>events/addEditreview/" + Re;
    }

    function editReview(Pid, Re) {
        window.location.href = "<?php echo ADMIN_URL?>events/addEditreview/" + Pid + "/" + Re;
    }
    
    function viewPackagelist() {
        window.location.href = "<?php echo ADMIN_URL?>events/list";
    }
</script>