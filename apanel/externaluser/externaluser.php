<?php
$moduleTablename = "tbl_external_users"; // Database table name
$moduleId = 33;                // module id >>>>> tbl_modules
$moduleFoldername = "";        // Image folder name

if (isset($_GET['page']) && $_GET['page'] == "externaluser" && isset($_GET['mode']) && $_GET['mode'] == "list"):
    ?>
    <h3>
        List External Users
        
    </h3>
    <div class="my-msg"></div>
    <div class="example-box">
        <div class="example-code">
            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
                <thead>
                <tr>
                    <th class="text-center">S.No.</th>
                    <th>Full Name</th>
                    <th>Property List</th>
                    <th class="text-center">Phone No</th>
                    <th class="text-center">Email</th>
                    <th class="text-center">Address</th>
                    <th class="text-center">Facebook</th>
                    <th class="text-center">Website</th>
                </tr>
                </thead>

                <tbody>
                <?php $records = Externaluser::find_by_sql("SELECT * FROM " . $moduleTablename . " WHERE status='1' ORDER BY sortorder ASC "); 
                foreach ($records as $record): ?>
                    <tr id="<?php echo $record->id; ?>">
                        <td class="text-center"><?php echo $record->sortorder; ?></td>
                        <td><?php echo $record->firstname . ' ' . $record->lastname; ?></td>
                        <td>
                            <a class="primary-bg medium btn loadingbar-demo" title="" onClick="viewpropertylist(<?php echo $record->id; ?>);" href="javascript:void(0);">
                            <span class="button-content">
                                <span class="badge bg-orange radius-all-4 mrg5R" title="" data-original-title="Badge with tooltip"><?php echo $countPrope = Property::getTotalProp($record->id);?></span>
                                <span class="text-transform-upr font-bold font-size-11">View Lists</span>
                            </span>
                            </a>  
                       </td> 
                        <td> <a href="telto:<?php echo $record->phone ?>"> <?php echo $record->phone; ?></a></td>
                        <td>
                           <a href="mailto:<?php echo $record->email ?>"> <?php echo $record->email ?></a>
                        </td>
                        <td><?php echo $record->address ?></td>
                        <td> <a href="<?php echo $record->facebook ?>" target="_blank"> <?php echo $record->facebook ?></td>
                        <td><a href="<?php echo $record->website ?>" target="_blank"><?php echo $record->website ?></a></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
    
   
<?php endif;
include("externaluser_property.php");
?>