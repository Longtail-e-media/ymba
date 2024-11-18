<?php
$reslist= '';
if(defined('PDF_LIST')) {
$sql = "SELECT * FROM tbl_pdf WHERE status='1' ORDER BY sortorder DESC ";

        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"]))? $_REQUEST["pageno"] : 1;
        $limit = 12;
        $total = $db->num_rows($db->query($sql));
        // print_r($total); die();
        $startpoint = ($page * $limit) - $limit; 
        $sql.=" LIMIT ".$startpoint.",".$limit;
        $query = $db->query($sql);
        $listRec=Pdf::find_by_sql($sql);

if(!empty($listRec)) {
    $reslist.='<div class="col-md-12 col-sm-12 col-xs-12">';
    foreach($listRec as $RecRow) {
    $date= date('d-M-Y', strtotime($RecRow->date));  
    if(!empty($RecRow->pdf)){
            $reslist.='<div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="single-property wow fadeInUp mb-40" data-wow-delay="0.2s" data-wow-duration="1s">
                                    <div class="property-desc">
                                        <div class="report-desc-top">
                                            <h6><a href="'. IMAGE_PATH . 'pdf/' . $RecRow->pdf .'" target="_blank">'.$RecRow->title.'</a></h6>
                                        </div>
                                        <div class="property-desc-bottom">
                                            <div class="report-bottom-list">
                                                <ul>
                                                    <li>
                                                        <img src="'.BASE_URL.'/template/cms/img/calendar.png" alt="Download Arrow">
                                                        <span>'.$date.'</span>
                                                    </li>
                                                    
                                                    <li>
                                                        <a href="'. IMAGE_PATH . 'pdf/' . $RecRow->pdf .'" download> <img src="'.BASE_URL.'/template/cms/img/down-arrow.png" alt="Download Arrow">
                                                            <span>Download</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> ';
    }
  }
  $url = BASE_URL.'newsletter';
  $reslist.=get_front_pagination($total, $limit, $page, $url);

 $reslist.='</div>';

}

}
$jVars['module:pdf-list'] = $reslist;



?>