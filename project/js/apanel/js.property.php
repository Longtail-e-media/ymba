<script language="javascript">

    function getLocation() {
        return '<?php echo BASE_URL;?>includes/controllers/ajax.property.php';
    }

    function getTableId() {
        return 'table_dnd';
    }

    $(document).ready(function () {
        oTable = $('#example').dataTable({
            "bJQueryUI": true,
            "sPaginationType": "full_numbers"
        }).rowReordering({
            sURL: "<?php echo BASE_URL;?>includes/controllers/ajax.property.php?action=sort",
            fnSuccess: function (message) {
                var msg = jQuery.parseJSON(message);
                showMessage(msg.action, msg.message);
            }
        });
    });
    $(document).ready(function() {
    $(function(){
    $(".subImagegallery-sort").sortable({   
        //connectWith: ".video-sort",
        start: function(event, ui) {
                var start_pos = ui.item.index();
                ui.item.data('start_pos', start_pos);
            },
        update: function (event, ui) {
                var mySel  = ""; 
                $('div.oldsort').each(function(i){
                    mySel = mySel + ';' + $(this).attr('csort');
                });
                //var start_pos = ui.item.data('start_pos');
                var id        = ui.item.context.id;
                var end_pos   = ui.item.index();                
                $.ajax({
                   type: "POST",
                   dataType:"JSON",
                   url:  getLocation(),
                   data: "action=sortpropertimage&id="+id+"&toPosition="+end_pos+"&sortIds="+mySel,
                   success: function(data){
                        var msg = eval(data);
                        showMessage(msg.action,msg.message);
                     }
                });
            }
        });
    });
});
    
    $(document).ready(function () {
        $('.btn-submit').on('click', function () {
            var actVal = $(this).attr('btn-action');
            $('#idValue').attr('myaction', actVal);
        })

        // form submisstion actions
        jQuery('#property_frm').validationEngine({
            autoHidePrompt: true,
            scroll: false,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    $('.btn-submit').attr('disabled', 'true');
                    var action = ($('#idValue').val() == 0) ? "action=add&" : "action=edit&";
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();

                    var data = $('#property_frm').serialize();
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
                                return false;
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                var actionId = $('#idValue').attr('myaction');
                                if (actionId == 2)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>property/list";
                                    }, 3000);
                                if (actionId == 1)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>property/addEdit";
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
           jQuery('#propertyimage_frm').validationEngine({
    autoHidePrompt:true,
    scroll: false,
    onValidationComplete: function(form, status){
        if(status==true){   
            $('#btn-submit').attr('disabled', 'true');
            var action = "action=addpropertyimage&";
            var data = $('#propertyimage_frm').serialize();
            queryString = action+data;
            $.ajax({
               type: "POST",
               dataType:"JSON",
               url:  getLocation(),
               data: queryString,
               success: function(data){
                   var msg = eval(data);
                   if(msg.action=='warning'){
                       showMessage(msg.action,msg.message);
                       $('#btn-submit').removeAttr('disabled');                                    
                       $('.formButtons').show();
                       return false;
                   }
                   if(msg.action=='success'){
                       showMessage(msg.action,msg.message);   
                       setTimeout( function(){window.location.href=window.location.href;},3000);
                   }
                   if(msg.action=='notice'){
                       showMessage(msg.action,msg.message);                            
                       setTimeout( function(){window.location.href=window.location.href;},3000);
                   }                                   
                   if(msg.action=='error'){
                       showMessage(msg.action,msg.message);
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
    });
  /*  jQuery('#propertyimage_frm').validationEngine({
    autoHidePrompt:true,
    scroll: false,
    onValidationComplete: function(form, status){
        if(status==true){   
            $('#btn-submit').attr('disabled', 'true');
            var action = "action=addpropertyimage&";
            var data = $('#propertyimage_frm').serialize();
            queryString = action+data;
            $.ajax({
               type: "POST",
               dataType:"JSON",
               url:  getLocation(),
               data: queryString,
               success: function(data){
                   var msg = eval(data);
                   if(msg.action=='warning'){
                       showMessage(msg.action,msg.message);
                       $('#btn-submit').removeAttr('disabled');                                    
                       $('.formButtons').show();
                       return false;
                   }
                   if(msg.action=='success'){
                       showMessage(msg.action,msg.message);   
                       setTimeout( function(){window.location.href=window.location.href;},3000);
                   }
                   if(msg.action=='notice'){
                       showMessage(msg.action,msg.message);                            
                       setTimeout( function(){window.location.href=window.location.href;},3000);
                   }                                   
                   if(msg.action=='error'){
                       showMessage(msg.action,msg.message);
                       $('#buttonsP img').remove();
                       $('.formButtons').show();
                       return false;
                   }
               }
            });
        return false;
        }
    }
});*/

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
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Property")?>');
        $('.pText').html('Click on yes button to delete this Property permanently.!!');
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
    function subrecordDelete(Re)
{
    $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"image")?>');                                                            
    $('.pText').html('Click on yes button to delete this image permanently.!!');
    $('.divMessageBox').fadeIn();
    $('.MessageBoxContainer').fadeIn(1000);
    
    $(".botTempo").on("click",function(){                       
        var popAct=$(this).attr("id");                      
        if(popAct=='yes'){
            $.ajax({
               type: "POST",
               dataType:"JSON",
               url:  getLocation(),
               data: 'action=deletepropertyimage&id='+Re,
               success: function(data){
                 var msg = eval(data);  
                 if(msg.action=='success'){
                     $('#'+Re).remove();
                     reStructureList(getTableId());
                 }
               }
            });
        }else{Re='';}
        $('.divMessageBox').fadeOut();
        $('.MessageBoxContainer').fadeOut(1000);
    }); 
}

    /*************************************** Toggle Meta tags********************************************/
    function toggleMetadata() {
        $(".metadata").slideToggle("slow", function () {
        });
    }

   
    /***************************************** View property Lists *******************************************/
    function viewpropertylist() {
        window.location.href = "<?php echo ADMIN_URL?>property/list";
    }

    /***************************************** Add New property *******************************************/
    function AddNewProperty() {
        window.location.href = "<?php echo ADMIN_URL?>property/addEdit";
    }

    /***************************************** Edit records *****************************************/
    function editRecord(Re) {
        window.location.href = "<?php echo ADMIN_URL?>property/addEdit/" + Re;
    }

   
    function viewpropertyimagelist(Re)
{
    window.location.href="<?php echo ADMIN_URL?>property/propertyImageList/"+Re;
}
function AddNewPropertyImage(Re)
{
    window.location.href="<?php echo ADMIN_URL?>property/addEditPropertyImage/"+Re;
}
function editPropertyImageRecord(Re,Reg)
{
    window.location.href="<?php echo ADMIN_URL?>property/addEditPropertyImage/"+Re+"&image_id="+Reg;
}
function deleteTempimage(Re) {
        $('#previewUserimage' + Re).fadeOut(1000, function () {
            $('#previewUserimage' + Re).remove();
           
        });
    }

function deleteSavedimage(Re)
{
    $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"image")?>');                                                            
    $('.pText').html('Click on yes button to delete this image permanently.!!');
    $('.divMessageBox').fadeIn();
    $('.MessageBoxContainer').fadeIn(1000);
    
    $(".botTempo").on("click",function(){                       
        var popAct=$(this).attr("id");                      
        if(popAct=='yes'){
            $.ajax({
               type: "POST",
               dataType:"JSON",
               url:  getLocation(),
               data: 'action=deletepropertyimage&id='+Re,
               success: function(data){
                 var msg = eval(data);  
                 if(msg.action=='success'){
                     $('.removeSavedimg'+Re).fadeOut(1000,function(){$('.removeSavedimg'+Re).remove();});
                 }
               }
            });
        }else{Re='';}
        $('.divMessageBox').fadeOut();
        $('.MessageBoxContainer').fadeOut(1000);
    }); 
}



   
    /******************************** Remove saved property image ********************************/
    function deleteSavedPropertyimage(Re) {
        $('.MsgTitle').html('Do you want to delete the record ?');
        $('.pText').html('Clicking yes will be delete this record permanently. !!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedimg' + Re).fadeOut(1000, function () {
                    $('#removeSavedimg' + Re).remove();
                    $('.uploader').fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }
    $(function(){
/*************************************** USer Image Status Toggler ******************************************/      
    $('.imageStatusToggle').on('click', function(){
        var Re      = $(this).attr('rowId');
        var status  = $(this).attr('status');       
        newStatus = (status == 1) ? 0 : 1;
        $.ajax({
           type: "POST",
           url:  getLocation(),
           data: "action=toggleStatuspropertyimage&id="+Re,
           success: function(msg){}
        });
        $(this).attr({'status':newStatus});
        if(status==1){
            $('#toggleImg'+Re).removeClass("icon-check-circle-o");
            $('#toggleImg'+Re).addClass("icon-clock-os-circle-o");
        }else{
            $('#toggleImg'+Re).removeClass("icon-clock-os-circle-o");
            $('#toggleImg'+Re).addClass("icon-check-circle-o");
        }
    });
});
</script>