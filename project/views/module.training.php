<?php

$training_detail = '';

if (defined('TRAINING_PAGE')) {
    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $sql = "SELECT * FROM tbl_training WHERE status='1' ORDER BY YEAR(date) DESC, MONTH(date)";

    $limit = 8;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;

    $records = Training::find_by_sql($sql);
    $last_year = '';
    if (!empty($records)) {
        $training_detail .= '<div class="news-list">';
        $count = 1;
        foreach ($records as $record) {
            if ($count == 1) {
                $start = '
                    <h2>Year ' . date('Y', strtotime($record->date)) . '</h2>
                    <div class="row">
                ';
            } elseif (!empty($last_year)) {
                if ($last_year != date('Y', strtotime($record->date))) {
                    $start = '
                    </div>
                    
                        <h2>Year ' . date('Y', strtotime($record->date)) . '</h2>
                        <div class="row">
                    ';
                } else {
                    $start = '';
                }
            }

            $givenTo = (!empty($record->given_to)) ? '<h4><span style="font-weight: bold;">To: </span>' . $record->given_to . '</h4>' : '';
            $pdf = (!empty($record->pdf)) ? '<a href="' . BASE_URL . 'images/training/pdf/' . $record->pdf . '" class="btn">View Presentation</a>' : '';
            $date_from = (!empty($record->date)) ? '<span style="font-weight: bold;">Date: <span style="color:#007bff;font-weight: normal">' . date('F d, Y', strtotime($record->date)) . '</span></span>' : '';
            $date_to = (!empty($record->date_to)) ? '<span>|</span><span style="font-weight: bold;"><span style="color:#007bff;font-weight: normal"> ' . date('F d, Y', strtotime($record->date_to)) . '</span></span>' : '';
            $training_detail .= '
                ' . $start . '
                <div class="col-md-6">
                    <div class="news-date1">
                        <!--<h3 class="text-center"><br>' . date('M', strtotime($record->date)) . '<br>' . date('Y', strtotime($record->date)) . '</h3>-->
                        <img src="images/watch.png" style="width: 64px">
                    </div>
                    <div class="news-content">
                        <div class="news_info">
                          ' . $date_from . '
                          ' . $date_to . '
                        </div>
                        <h4><span style="font-weight: bold;">Topic:&ensp;</span>' . $record->title . '</h4>
                        ' . $givenTo . '
                        ' . $pdf . '
                    </div>
                </div>
            ';

            $last_year = date('Y', strtotime($record->date));
            $count++;
        }
        $training_detail .= '
            </div>
            </div>
            <div class="text-center">
        ';
        $training_detail .= get_front_pagination($total, $limit, $page, BASE_URL . 'training');
        $training_detail .= '
            </div>
        ';
    } else {
        $training_detail .= '
            <div class="news-list">
                <h2>No Records Found</h2>
            </div>
        ';
    }
}

$jVars['module:training-presentation'] = $training_detail;


?>

