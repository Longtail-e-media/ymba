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
    case "registerNewUser":
        $record = new Externaluser();
        // var_dump($record); die();
        $record->firstname = $_REQUEST['firstname'];
        $record->email = $_REQUEST['email'];
        $record->phone = $_REQUEST['phone'];
        $record->password = md5($_REQUEST['password']);
        $record->accesskey = @randomKeys(25);
        $record->status = 1;
        $record->sortorder = Externaluser::find_maximum();

        $checkDupliEmail = Externaluser::checkDupliEmail($record->email);
        if ($checkDupliEmail):
            echo json_encode(array("action" => "warning", "message" => " This email already exists."));
            exit;
        endif;
        $db->begin();
        if($record->save()):$db->commit();
                echo json_encode(array('action'=>'success','message'=>'Your registration is successful, please login!'));
                 log_action("User [" . $record->firstname . "] login Created " . $GLOBALS['basic']['addedSuccess'], 1, 3);
        else:
                echo json_encode(array('action'=>'unsuccess','message'=>'Internal error.'));
        endif;
        break;

        case "updateProfileUser":
        $record = Externaluser::find_by_id($_REQUEST['idValue']);
        $record->firstname = $_REQUEST['firstname'];
        $record->lastname = $_REQUEST['lastname'];
        $record->image  = $_REQUEST['imageArrayname'];
        $record->email = $_REQUEST['email'];
        $record->phone = $_REQUEST['phone'];
        $record->address = $_REQUEST['address'];
        $record->accesskey = @randomKeys(25);
        if ($record->email != $_REQUEST['email']) {
            $checkDupliUname = Externaluser::checkDupliUname($_REQUEST['email']);
            if ($checkDupliUname):
                echo json_encode(array("action" => "warning", "message" => "email Already Exists."));
                exit;
            endif;
        }

        $record->website = $_REQUEST['website'];
        $record->facebook = $_REQUEST['facebook'];
        $record->status = 1;
        if (!empty($_REQUEST['password']))
            $record->password = md5($_REQUEST['password']);
        $db->begin();
        if ($record->save()):$db->commit();
            $message = sprintf($GLOBALS['basic']['changesSaved_'], "User '" . $record->firstname . " " . $record->lastname . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action("User [" . $record->firstname . " " . $record->lastname . "] Edit Successfully", 1, 4);
        else: $db->rollback();
            echo json_encode(array("action" => "notice", "message" => $GLOBALS['basic']['noChanges']));
        endif;
        break;

        case "userPropertyAdd":
        $record = new Property();
        //  var_dump($record); die();
        $record->slug = create_slug($_REQUEST['title']);
        $record->title = $_REQUEST['title'];
        
         $record->ext_user_id = $_SESSION['user_id'];
        $record->category = $_REQUEST['category'];
        $record->content = $_REQUEST['content'];
        $record->excerpt = $_REQUEST['excerpt'];
        $record->image = serialize(array_values(array_filter($_REQUEST['imageArrayname'])));
        $record->featured = (isset($_REQUEST['featured']) and !empty($_REQUEST['featured']))?$_REQUEST['featured']:'';
    
        $record->sold_out = (isset($_REQUEST['sold_out']) and !empty($_REQUEST['sold_out']))?$_REQUEST['sold_out']:'';
        if($_REQUEST['expire_on']){
        $record->expire_on = date("Y-m-d", strtotime($_REQUEST['expire_on']));
        }else{
           $record->expire_on =""; 
        }
        $record->call_us = $_REQUEST['call_us'];
        $record->call_us_mobile = $_REQUEST['call_us_mobile'];
        $record->road_access = $_REQUEST['road_access'];
        $record->road_width = $_REQUEST['road_width'];
        $record->selling_price = $_REQUEST['selling_price'];
        $record->plot_no = $_REQUEST['plot_no'];
        $record->land = $_REQUEST['land'];
        $record->community_housing = $_REQUEST['community_housing'];
        $record->land_area = $_REQUEST['land_area'];
        $record->build_up_area = $_REQUEST['build_up_area'];
        $record->bedroom = $_REQUEST['bedroom'];
        $record->bathroom = $_REQUEST['bathroom'];
        $record->kitchen = $_REQUEST['kitchen'];
        $record->property_type = $_REQUEST['property_type'];
        $record->property_status = $_REQUEST['property_status'];
        $record->province = $_REQUEST['province'];
        $record->district = $_REQUEST['district'];
        $record->municipality_or_vdc = $_REQUEST['municipality_or_vdc'];
        $record->city = $_REQUEST['city'];
        $record->location = 1;
        $record->furnished = $_REQUEST['furnished'];
        $record->user_property_location = $_REQUEST['user_property_location'];
        $record->no_of_storey = $_REQUEST['no_of_storey'];
        $record->parking_spot = $_REQUEST['parking_spot'];
        $record->facing_direction = $_REQUEST['facing_direction'];
        $record->garden = $_REQUEST['garden'];
        $record->main_road = $_REQUEST['main_road'];
        $record->distance_from_mainroad	 = $_REQUEST['distance_from_mainroad'];
        $record->nearest_landmark = $_REQUEST['nearest_landmark'];
        $record->distance_from_landmark = $_REQUEST['distance_from_landmark'];
        $record->structure_style = $_REQUEST['structure_style'];
        $record->other_structure_style = $_REQUEST['other_structure_style'];
        $record->living_room = $_REQUEST['living_room'];
        $record->basement = $_REQUEST['basement'];
        $record->attached_bathroom = $_REQUEST['attached_bathroom'];
        $record->servant_room = $_REQUEST['servant_room'];
        $record->study_room = $_REQUEST['study_room'];
        $record->dining_room = $_REQUEST['dining_room'];
        $record->family_lounge = $_REQUEST['family_lounge'];
        $record->laundry_room = $_REQUEST['laundry_room'];
        $record->no_of_store = $_REQUEST['no_of_store'];
        
        $record->puja_room = $_REQUEST['puja_room'];
        $record->security = (isset($_REQUEST['security']) and !empty($_REQUEST['security']))?$_REQUEST['security']:'';
        $record->gym_hall = (isset($_REQUEST['gym_hall']) and !empty($_REQUEST['gym_hall']))?$_REQUEST['gym_hall']:'';
        $record->elevator_or_lift = (isset($_REQUEST['elevator_or_lift']) and !empty($_REQUEST['elevator_or_lift']))?$_REQUEST['elevator_or_lift']:'';
        $record->swimming = (isset($_REQUEST['swimming']) and !empty($_REQUEST['swimming']))?$_REQUEST['swimming']:'';
        $record->power_backup = $_REQUEST['power_backup'];
        $record->community_water_supply = $_REQUEST['community_water_supply'];
        $record->community_monthly_fee = $_REQUEST['community_monthly_fee'];

        $record->drinking_water_supply = $_REQUEST['drinking_water_supply'];
        $record->electricity = $_REQUEST['electricity'];
        $record->sewage = $_REQUEST['sewage'];
        $record->cable_line = $_REQUEST['cable_line'];
        $record->telecommunication = $_REQUEST['telecommunication'];
        $record->guard_house = $_REQUEST['guard_house'];
        $record->under_ground_water_tank = $_REQUEST['under_ground_water_tank'];
        $record->solar_water_heater = $_REQUEST['solar_water_heater'];
        
        $record->bigha = $_REQUEST['bigha'];
        $record->katha = $_REQUEST['katha'];
        $record->dhur = $_REQUEST['dhur'];
        $record->haath = $_REQUEST['haath'];
        $record->ropani = $_REQUEST['ropani'];
        $record->aana = $_REQUEST['aana'];
        $record->paisa = $_REQUEST['paisa'];
        $record->dam = $_REQUEST['dam'];
        $record->status = 0;
        $record->sortorder = Property::find_maximum();
       

        $checkDupliName = Property::checkDupliName($record->title);
        if ($checkDupliName):
            echo json_encode(array("action" => "warning", "message" => "Property Already Exists."));
            exit;
        endif;
        $db->begin();
        if ($record->save()): $db->commit();
            $message = sprintf($GLOBALS['basic']['addedSuccess_'], "Property '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action($message, 1, 3);
            // begining of email function
    $usermail = User::get_UseremailAddress_byId(1);
    $ccusermail = User::field_by_id(1, 'optional_email');
    $sitename = Config::getField('sitename', true);
    foreach ($_POST as $key => $val) {
        $$key = $val;
    }
     $userid= $_SESSION['user_id'];
    $user= Externaluser::find_by_id($userid);

    $body = '
    <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
      <tr>
        <td><p>Dear Sir,</p>
         <p>A new property ' . $_REQUEST['title'] . ' has been created by user ' . $user->firstname . ' please check all details in your dashbord.</p>
        </td>
      </tr>
      <tr>
        <td><p><span style="color:#0065B3; font-size:14px; font-weight:bold">Comment message</span><br />
            The details provided are:</p>
          <p><strong>Property Title</strong> : ' . $_REQUEST['title'] . '<br />        
          <strong>Content</strong>: ' . $_REQUEST['content'] . '<br />
          <strong>User Name</strong>: ' . $user->firstname . '<br />
          </p>
        </td>
      </tr>
      <tr>
        <td><p>&nbsp;</p>
        <p>Thank you,<br />
        ' . $user->firstname . '
        </p></td>
      </tr>
    </table>
    ';
    $mail = new PHPMailer(); // defaults to using php "mail()"

    $mail->SetFrom($user->email, $user->firstname);
    $mail->AddReplyTo($user->email, $user->firstname);
    $mail->AddAddress($usermail, $sitename);
    // if add extra email address on back end
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }
    $mail->Subject = 'Enquiry mail from ' . $user->firstname;
    $mail->MsgHTML($body);

    $mail->Send();
    // end of mail function
        else:
            $db->rollback();
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['unableToSave']));
        endif;
        break;
        
         case "userPropertyEdit":
        $record = Property::find_by_id($_REQUEST['idValue']);
       
        if ($record->title != $_REQUEST['title']) {
            $checkDupliName = Property::checkDupliName($_REQUEST['title']);
            if ($checkDupliName):
                echo json_encode(array("action" => "warning", "message" => "Property is already exist."));
                exit;
            endif;
        }
        $record->slug = create_slug($_REQUEST['title']);
        $record->ext_user_id = $_SESSION['user_id'];
        $record->title = $_REQUEST['title'];
        $record->image = serialize(array_values(array_filter($_REQUEST['imageArrayname'])));
        $record->category = $_REQUEST['category'];
        $record->content = $_REQUEST['content'];
        $record->excerpt = $_REQUEST['excerpt'];
        $record->featured = (isset($_REQUEST['featured']) and !empty($_REQUEST['featured']))?$_REQUEST['featured']:'';
        $record->sold_out = (isset($_REQUEST['sold_out']) and !empty($_REQUEST['sold_out']))?$_REQUEST['sold_out']:'';
        // $record->payment_type = $_REQUEST['payment_type'];
        if($_REQUEST['expire_on']){
        $record->expire_on = date("Y-m-d", strtotime($_REQUEST['expire_on']));
        }else{
           $record->expire_on =""; 
        }
        $record->call_us = $_REQUEST['call_us'];
        $record->call_us_mobile = $_REQUEST['call_us_mobile'];
        $record->selling_price = $_REQUEST['selling_price'];
        $record->land = $_REQUEST['land'];
        $record->community_housing = $_REQUEST['community_housing'];
        $record->land_area = $_REQUEST['land_area'];
        $record->plot_no = $_REQUEST['plot_no'];
        $record->build_up_area = $_REQUEST['build_up_area'];
        $record->bedroom = $_REQUEST['bedroom'];
        $record->bathroom = $_REQUEST['bathroom'];
        $record->kitchen = $_REQUEST['kitchen'];
        $record->road_access = $_REQUEST['road_access'];
        $record->road_width = $_REQUEST['road_width'];
        $record->property_type = $_REQUEST['property_type'];
        $record->property_status = $_REQUEST['property_status'];
        $record->province = $_REQUEST['province'];
        $record->district = $_REQUEST['district'];
        $record->municipality_or_vdc = $_REQUEST['municipality_or_vdc'];
        $record->city = $_REQUEST['city'];
        $record->location = 1;
        $record->furnished = $_REQUEST['furnished'];
        $record->user_property_location = $_REQUEST['user_property_location'];
        $record->no_of_storey = $_REQUEST['no_of_storey'];
        $record->parking_spot = $_REQUEST['parking_spot'];
        $record->facing_direction = $_REQUEST['facing_direction'];
        $record->garden = $_REQUEST['garden'];
        $record->main_road = $_REQUEST['main_road'];
        $record->distance_from_mainroad	 = $_REQUEST['distance_from_mainroad'];
        $record->nearest_landmark = $_REQUEST['nearest_landmark'];
        $record->distance_from_landmark = $_REQUEST['distance_from_landmark'];
        $record->structure_style = $_REQUEST['structure_style'];
        $record->other_structure_style = $_REQUEST['other_structure_style'];
        $record->living_room = $_REQUEST['living_room'];
        $record->basement = $_REQUEST['basement'];
        $record->attached_bathroom = $_REQUEST['attached_bathroom'];
        $record->servant_room = $_REQUEST['servant_room'];
        $record->study_room = $_REQUEST['study_room'];
        $record->dining_room = $_REQUEST['dining_room'];
        $record->family_lounge = $_REQUEST['family_lounge'];
        $record->laundry_room = $_REQUEST['laundry_room'];
        $record->no_of_store = $_REQUEST['no_of_store'];
        
        $record->puja_room = $_REQUEST['puja_room'];
        $record->security = (isset($_REQUEST['security']) and !empty($_REQUEST['security']))?$_REQUEST['security']:'';
        $record->gym_hall = (isset($_REQUEST['gym_hall']) and !empty($_REQUEST['gym_hall']))?$_REQUEST['gym_hall']:'';
        $record->elevator_or_lift = (isset($_REQUEST['elevator_or_lift']) and !empty($_REQUEST['elevator_or_lift']))?$_REQUEST['elevator_or_lift']:'';
        $record->swimming = (isset($_REQUEST['swimming']) and !empty($_REQUEST['swimming']))?$_REQUEST['swimming']:'';
        $record->power_backup = $_REQUEST['power_backup'];
        $record->community_water_supply = $_REQUEST['community_water_supply'];
        $record->community_monthly_fee = $_REQUEST['community_monthly_fee'];

        $record->drinking_water_supply = $_REQUEST['drinking_water_supply'];
        $record->electricity = $_REQUEST['electricity'];
        $record->sewage = $_REQUEST['sewage'];
        $record->cable_line = $_REQUEST['cable_line'];
        $record->telecommunication = $_REQUEST['telecommunication'];
        $record->guard_house = $_REQUEST['guard_house'];
        $record->under_ground_water_tank = $_REQUEST['under_ground_water_tank'];
        $record->solar_water_heater = $_REQUEST['solar_water_heater'];
        
        $record->bigha = $_REQUEST['bigha'];
        $record->katha = $_REQUEST['katha'];
        $record->dhur = $_REQUEST['dhur'];
        $record->haath = $_REQUEST['haath'];
        $record->ropani = $_REQUEST['ropani'];
        $record->aana = $_REQUEST['aana'];
        $record->paisa = $_REQUEST['paisa'];
        $record->dam = $_REQUEST['dam'];
        $record->status = 0;
        $db->begin();
        if ($record->save()):$db->commit();
            $message = sprintf($GLOBALS['basic']['changesSaved_'], "Property '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action($message, 1, 4);
        else: $db->rollback();
            echo json_encode(array("action" => "notice", "message" => $GLOBALS['basic']['noChanges']));
        endif;
        break;

       // front user login
        case "frontlogin":
        $useraccess = addslashes($_REQUEST['email']);
        $paccess = addslashes($_REQUEST['password']);
        $sql= 'SELECT * FROM tbl_external_users WHERE email="'.$useraccess.'"';
        $sql.=' AND password="'.md5($paccess).'" LIMIT 1 ';
        $count = $db->num_rows($db->query($sql));
        $sqlid=$db->fetch_object($db->query($sql));
        $userid= $sqlid->id;
        if($count>0){
            
                $uprec = Externaluser::find_by_email($useraccess);
                $session->set('email_logged',$useraccess);
                $session->set('user_id',$userid);
                $remember = isset($_REQUEST['remember']) ? 1 : 0;   

                if(!empty($remember)){
                      setcookie("remem_email",$useraccess,time()+(60*60), "/", NULL); 
                      setcookie("remem_pass",$paccess,time()+(60*60), "/", NULL);    
                }else{
                      setcookie("remem_email",'',time()-(60*60), "/", NULL); 
                      setcookie("remem_pass",'',time()-(60*60), "/", NULL);
                }
                $message="Welcome ".$uprec->firstname;
            echo json_encode(array("action"=>"success","message"=>$message));
        
        }else{
            $message="email or Password doesn't match !";
            echo json_encode(array("action"=>"errors","message"=>$message));
        }
    break;
        
        case "forgetuser_password":
            $emailAddress  = addslashes($_REQUEST['email']);
            // echo $emailAddress; die();
            $mailcheck     = Externaluser::get_validMember_mail($emailAddress);
            
            if($mailcheck):         
                $accessToken = randomKeys(10);          
                $row = Externaluser::find_by_mail($emailAddress);
                
                $forgetRec   = Externaluser::find_by_id($row->id); 
               
                $forgetRec->access_code = $accessToken;
                
                /* Mail Format */
                $siteName   = Config::getField('sitename',true);
                $AdminEmail = Externaluser::get_UseremailAddress_byId(1);       
                $UserName   = Externaluser::get_user_shotInfo_byId($row->id);
                $fullName   = $UserName->firstname.' '.$UserName->lastname; 
                
                $msgbody = '<div>
                <h3>Reset password on '.$siteName.'</h3>                
                <div><font face="Trebuchet MS">Dear '.$fullName.' !</font> <br /><br><br>
                Please <a href="'.BASE_URL.'user/reset-password/'.$accessToken.'">click here to reset your password.</a> <br><br>
                If you didn\'t request your password then delete this email.  <br>
                <br><br>
                <p>Thanks,
                <br> Webmaster<br>
                '.$siteName.'
                </p>
                </div>
                </div>';
                  
                 $mail = new PHPMailer();   
                
                 $mail->SetFrom($AdminEmail,$siteName, 0);               
                 $mail->AddReplyTo($forgetRec->email,$fullName);
                 $mail->AddAddress($forgetRec->email,$fullName);          
                 $mail->Subject    = "Forgot password on ".$siteName;   
                 $mail->MsgHTML($msgbody);
                
                if(!$mail->Send()):
                    echo json_encode(array('action'=>'unsuccess','message'=>'Not valid User email address'));
                else:
                    $forgetRec->save();
                    echo json_encode(array('action'=>'success','message'=>'Please check your mail for reset passord'));
                endif;              
            else:
                echo json_encode(array('action'=>'unsuccess','message'=>'Not valid User email address'));
            endif;
        break;
        
        case "changeuser_password":
            $id = addslashes($_SESSION['user_id']);
            $record = Externaluser::find_by_id($id);
            $record->password = md5($_REQUEST['password']);
            $record->access_code = randomKeys(10);
            if($record->save()):
                echo json_encode(array('action'=>'success','message'=>'Password has been changed, please login!'));
            else:
                echo json_encode(array('action'=>'unsuccess','message'=>'Internal error.'));
            endif;
        break;

        case "resetuser_password":
        $id = addslashes($_REQUEST['id']);
        $record = Externaluser::find_by_id($id);
        $record->password = md5($_REQUEST['password']);
        $record->access_code = randomKeys(10);
        if ($record->save()):
            echo json_encode(array('action' => 'success', 'message' => 'Password has been changed, please login!'));
        else:
            echo json_encode(array('action' => 'unsuccess', 'message' => 'Internal error.'));
        endif;
        break;
}
?>