<?php
$userpropTablename  = "tbl_property"; // Database table name
if(isset($_GET['page']) && $_GET['page'] == "externaluser" && isset($_GET['mode']) && $_GET['mode']=="userpropertylist"):
    $id = intval(addslashes($_GET['id']));  
?>

<h3>
Property ["<?php echo Externaluser::getExternaluserName($id);?>"]
<a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);"
           onClick="viewextuserlist();">
    <span class="glyph-icon icon-separator">
      <i class="glyph-icon icon-minus-square"></i>
    </span>
            <span class="button-content"> Back </span>
        </a>
</h3>
<div class="my-msg"></div>
<div class="example-box">
    <div class="example-code">    
    <table cellpadding="0" cellspacing="0" border="0" class="table" id="subexample">
        <thead>
            <tr>
               <th>S N</th>
               <th>Title</th>
               <th>Category</th>
               <th>District</th>
               <th>Location</th>
               <th>Price</th>
               <th>Property Status</th>         
            </tr>
        </thead> 
        <tbody>
            <?php $records = Property::find_by_sql("SELECT * FROM ".$userpropTablename." WHERE ext_user_id=".$id." ORDER BY sortorder DESC "); 
                  foreach($records as $key=>$record): ?>    
                  
                <td><?php echo $key+1;?></td>
                <td>
                    <?php if($record->status==1){?>
                    <div class="col-md-7">
                 <a href="<?php echo BASE_URL.'property/'.$record->slug; ?>" target="_blank">
                      <?php echo $record->title; ?></a>
                    </div>
                <?php }else{ ?>
                <div class="col-md-7">
                      <?php echo $record->title;?>
                    </div>
            <?php } ?>
                </td> 
                <td>
                    <?php $cat=Category::find_by_id($record->category); echo $cat->title;?>
                </td>
                <td>
                    <?php $dist=District::find_by_id($record->district); echo $dist->title;?>
                </td>
                <td>
                    <?php $loc=Location::find_by_id($record->location); echo $loc->title;?>
                </td>
                <td>
                    <?php echo $record->selling_price;?>
                </td>
                <td>
                    <?php
                    if($record->status==1){
                     echo 'Published';
                 }else{
                    echo "Unpublished";
                    }
                 ?>
                </td>
                                      
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    </div>
   
<a class="btn medium primary-bg" href="javascript:void(0);" id="applySelected_btn">
    <span class="glyph-icon icon-separator float-right">
      <i class="glyph-icon icon-cog"></i>
    </span>
    <span class="button-content"> Submit </span>
</a>
</div>

<?php endif; ?>