<script language="javascript">

function getLocation(){
	return '<?php echo BASE_URL;?>includes/controllers/ajax.district.php';
}
function getTableId(){
	return 'table_dnd';
}

$(document).ready(function() {
	oTable = $('#example').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	}).rowReordering({ 
		  sURL:"<?php echo BASE_URL;?>includes/controllers/ajax.district.php?action=sort",
		  fnSuccess: function(message) { 
					var msg = jQuery.parseJSON(message);
					showMessage(msg.action,msg.message);
			   }
		   });
});

$(document).ready(function() {
	oTable = $('#subexample').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	}).rowReordering({ 
		  sURL:"<?php echo BASE_URL;?>includes/controllers/ajax.district.php?action=subSort",
		  fnSuccess: function(message) { 
					var msg = jQuery.parseJSON(message);
					showMessage(msg.action,msg.message);
			   }
		   });
});


$(document).ready(function(){	
	$('.btn-submit').on('click',function(){
		var actVal = $(this).attr('btn-action');
		$('#idValue').attr('myaction',actVal);
	})	
	// form submisstion actions		
	jQuery('#district_frm').validationEngine({
		autoHidePrompt:true,
		promptPosition : "bottomLeft",
		scroll: true,
		onValidationComplete: function(form, status){
			if(status==true){	
				$('.btn-submit').attr('disabled', 'true');
				var action = ($('#idValue').val() == 0) ? "action=add&" : "action=edit&" ;
				for ( instance in CKEDITOR.instances )
                CKEDITOR.instances[instance].updateElement();
				var data = $('#district_frm').serialize();
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
						   setTimeout( function(){$('.my-msg').html('');},3000);
						   $('.btn-submit').removeAttr('disabled');						   			   
		 				   $('.formButtons').show();
						   return false
					   }
					   if(msg.action=='success'){
						   showMessage(msg.action,msg.message);	
						   var actionId = $('#idValue').attr('myaction');
						   if(actionId==2)
						   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>district/list";},3000);						   	
						   if(actionId==1)	
						   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>district/addEdit";},3000);						   	
						   if(actionId=='0')
						   	setTimeout( function(){window.location.href="";},3000);		
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
	})
/***************************************** View Location Lists *******************************************/
	jQuery('#location_frm').validationEngine({
	prettySelect : true,
	autoHidePrompt:true,
	useSuffix: "_chosen",
	promptPosition : "bottomLeft",
	scroll: true,
	onValidationComplete: function(form, status){
		if(status==true){	
			var Re = $("#type").val();
			$('.btn-submit').attr('disabled', 'true');
			var action = ($('#idValue').val() == 0) ? "action=addLocation&" : "action=editLocation&" ;
			for ( instance in CKEDITOR.instances )
            CKEDITOR.instances[instance].updateElement();

			var data = $('#location_frm').serialize();
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
					   $('.btn-submit').removeAttr('disabled');						   			   
					   $('.formButtons').show();
					   return false;
				   }
				   if(msg.action=='success'){
					   showMessage(msg.action,msg.message);	 
					   var actionId = $('#idValue').attr('myaction');
					   if(actionId==2)
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>district/locationlist/"+Re;},3000);						   	
					   if(actionId==1)	
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>district/addEditLocation/"+Re;},3000);						   	
					   if(actionId==0)
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>district/locationlist/"+Re;},3000);	 
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
})
	
});




// Edit records
function editRecord(Re)
{
	$.ajax({
	   type: "POST",
	   dataType:"JSON",
	   url:  getLocation(),
	   data: 'action=editExistsRecord&id='+Re,
	   success: function(data){
		   var msg = eval(data);
		   $("#title").val(msg.title);
		   $("#idValue").val(msg.editId);		   
	   }
	});
}
		
// Deleting Record
function recordDelete(Re){
	$('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"District")?>');															
	$('.pText').html('Click on yes button to delete this district permanently.!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$.ajax({
			   type: "POST",
			   dataType:"JSON",
			   url:  getLocation(),
			   data: 'action=delete&id='+Re,
			   success: function(data){
				 var msg = eval(data);  
				 showMessage(msg.action,msg.message);
				 $('#'+Re).remove();
				 reStructureList(getTableId());
			   }
			});
		}else{Re=null;}
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
}


// Deleting Record
function subrecordDelete(Re){
	$('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"Location")?>');															
	$('.pText').html('Click on yes button to delete this location permanently.!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$.ajax({
			   type: "POST",
			   dataType:"JSON",
			   url:  getLocation(),
			   data: 'action=deleteLocation&id='+Re,
			   success: function(data){
				 var msg = eval(data);  
				 showMessage(msg.action,msg.message);
				 $('#'+Re).remove();
				 reStructureList(getTableId());
			   }
			});
		}else{Re=null;}
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
}


/*************************************** Toggle Meta tags********************************************/	
function toggleMetadata(){
	$( ".metadata" ).slideToggle("slow",function(){});
}

/***************************************** View district Lists *******************************************/
function viewDistrictlist()
{
	window.location.href="<?php echo ADMIN_URL?>district/list";
}

/***************************************** Add New district *******************************************/
function AddNewDistrict()
{
	window.location.href="<?php echo ADMIN_URL?>district/addEdit";
}

/***************************************** Edit records *****************************************/
function editRecord(Re)
{
	window.location.href="<?php echo ADMIN_URL?>district/addEdit/"+Re;
}



/***************************************** View Subpackage Lists *******************************************/
function viewLocationlist(Re)
{
	window.location.href="<?php echo ADMIN_URL?>district/locationlist/"+Re;
}

/***************************************** Add New location *******************************************/
function AddNewLocation(Re)
{
	window.location.href="<?php echo ADMIN_URL?>district/addEditLocation/"+Re;
}

/***************************************** Editlocation records *****************************************/
function editLocation(Pid,Re)
{
	window.location.href="<?php echo ADMIN_URL?>district/addEditLocation/"+Pid+"/"+Re;
}



</script>