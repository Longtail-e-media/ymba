<?php
/**
 *
 * all media post are event
 * but all event will not be media
 * so media ma flagging cha vane event ma pani display gara
 * but event ma flagging cha vene only on event
 * not in media
 */

//Home Events
$home_events = '';
if (defined('HOME_PAGE')) {
    $events = Events::find_homepage_event(6);
    if (!empty($events)) {
        $i = 0;
        $duration = 0;
        foreach ($events as $event) {
            $img = BASE_URL.'template/cms/images/list-default.jpg';
            $images = unserialize($event->image);
            $file_path = SITE_ROOT . 'images/events/' . @$images[0];
            if (file_exists($file_path)) {
                $img = IMAGE_PATH.'events/'.$images[0];
            }
            $duration = ($i % 3 == 0) ? $duration + 1000 : $duration;
                if (!empty($event->linksrc)) {
                    $linkstart = ($event->linktype == 1) ? '<a href="' . $event->linksrc . '" target="_blank" >' : '<a href="' . BASE_URL . $event->linksrc . '" >';
                    $linkend = '</a>';
                } else {
                    $linkstart = '<a href="' . BASE_URL . 'eventsdetail/' . $event->slug . '" >';
                    $linkend = '</a>';
                }
                
                $comments_number = Review::getTotalSub($event->id);
                $comments = ($comments_number == 1)?'comment':'comments';
                $by = (!empty($event->published_in)) ? '<h6>By: '.$event->published_in.'</h6>' : '' ;
                $home_events .= '
                    <div class="col-md-4 col-sm-4 col-xs-12 mar-bottom-30">
                        <div class="grid">
                            <div class="grid-item">
                                <div class="grid-image">
                                    <img src="' . $img . '" alt="' . $event->title . '">
                                </div>
                                <div class="gridblog-content">
                                    <div class="date mar-bottom-15 d-flex justify-content-between">
                                        <div><i class="fas fa-calendar"></i> '.date('M d, Y', strtotime($event->event_stdate)).'</div>
                                        <!--<div style="text-decoration: underline;color: #3aaa36;">'.$comments_number.' '.$comments.'</div>-->
                                        <a href="'.BASE_URL.'eventsdetail/'.$event->slug.'#review_form" style="text-decoration: underline;color: #3aaa36;">'.$comments_number.' '.$comments.'</a>
                                    </div>
                                    <h3>' . $linkstart . $event->title . $linkend . '</h3>
                                    '.$by.'
                                    <p>'.$event->brief.'</p>
                                </div>
                            </div>
                        </div>
                    </div>';
                $i++;
        }
    }
}
$jVars['module:home-events'] = $home_events;


/**
 * Events Detail Page
 */
$events_banner = $events_detail = '';
if (defined('EVENT_DETAIL_PAGE')) {
    if (isset($_REQUEST['slug']) and !empty($_REQUEST['slug'])) {
        $slug = addslashes($_REQUEST['slug']);
        $eventRec = Events::find_by_slug($slug);

        if (!empty($eventRec)) {
            $images = unserialize($eventRec->banner_image);
            $file_path = SITE_ROOT . 'images/events/banner/' . @$images[0];
            $banner_img = (file_exists($file_path) and !empty($images[0])) ? IMAGE_PATH . 'events/banner/' . $images[0] : BASE_URL . 'template/cms/images/default-media-event-detail-banner.jpg';
            $by = (!empty($eventRec->published_in)) ? '<h6>By: '.$eventRec->published_in.'</h6>' : '' ;
            $events_banner .= '
                <div class="article-banner">
                    <div class="banner-post">
                        <img src="' . $banner_img . '" alt="' . $eventRec->title . '">
                        <h1>' . $eventRec->title . '</h1>
                        <i class="far fa-calendar-alt"> ' . date('dS M Y', strtotime($eventRec->event_stdate)) . '</i>
                        '.$by.'
                    </div>
                </div>
            ';

            $events_detail .= '
                <div class="col-md-8 col-sm-8 col-xs-12 pad-right-30">
                    <div class="blog-single">
                        <div class="blog-content mar-bottom-30">
                            ' . $eventRec->content . '
                        </div>
                ';
                
            $comments_number = Review::getTotalSub($eventRec->id);
            $comments = Review::find_by_package($eventRec->id);
            if(!empty($comments)){
                $events_detail .= '
                        <!-- blog comment list -->
                        <div class="single-comments single-box">
                            <h3 class="mar-bottom-30">Showing '.$comments_number.' comments</h3>
                    ';
                foreach ($comments as $comment){
                    $events_detail .= '
                            <div class="comment-box">
                                <div class="comment-content">
                                    <h4>'.$comment->name.'</h4>
                                    <p class="comment-date">'.date('F d, Y', strtotime($comment->added_date)).'</p>
                                    <p class="comment">'.strip_tags($comment->comments).'</p>
                                </div>
                            </div>
                    ';
                }
                $events_detail .= '
                        </div>
                ';
            }
            
            $events_detail .= '
                        <!-- blog review -->
                        <div class="single-add-review ">
                            <h3>Leave a Comment</h3>
                            <form id="review_form">
                                <div id="msg" style="display:none" class="alert alert-success"></div>
                                <div class="row">
                                    <input type="hidden" name="event_id" value="'.$eventRec->id.'">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Name" name="name">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" placeholder="Email" name="email">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <textarea name="comments" placeholder="Comment"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-btn">
                                            <button type="submit" class="biz-btn biz-btn1" name="submit" id="submit">Submit Comment</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- sidebar starts -->
                    <div class="col-md-4 col-sm-4 col-xs-12 pad-left-30">
                        <div class="blog-sidebar">
                        <a href="' . BASE_URL . 'events" class="btn btn-success">Back</a>
                ';

            $relatedEvents = Events::get_relatedevnt($eventRec->id, $eventRec->type, 8);
            if (!empty($relatedEvents)) {
                $events_detail .= '
                    <div class="sidebar-item">
                            <h3>Recent Posts</h3>
                            <div class="sidebar-tabs ">
                ';
                $i = 1;
                foreach ($relatedEvents as $relatedEvent) {
                    if (!empty($relatedEvent->content)) {
                        $images = unserialize($relatedEvent->image);
                        $file_path = SITE_ROOT . 'images/events/' . @$images[0];
                        $banner_img = (file_exists($file_path) and !empty($images[0])) ? IMAGE_PATH . 'events/' . $images[0] : BASE_URL . 'template/cms/images/old-logo.png';
                        if (!empty($relatedEvent->linksrc)) {
                            $linkstart = ($relatedEvent->linktype == 1) ? '<a href="' . $relatedEvent->linksrc . '" target="_blank" class="title">' : '<a href="' . BASE_URL . $relatedEvent->linksrc . '" class="title">';
                            $linkend = '</a>';
                        } else {
                            $linkstart = '<a href="' . BASE_URL . 'eventsdetail/' . $relatedEvent->slug . '" class="title">';
                            $linkend = '</a>';
                        }
                        $events_detail .= '
                            <article class="post mar-bottom-20">
                                <div class="content display-flex">
                                    <div class="blog-no">
                                        <!--<img src="' . $banner_img . '" alt="' . $relatedEvent->title . '" class="width-100">-->
                                        0'.$i.'
                                    </div>
                                    <div class="content-list pad-left-15">
                                        <div class="date mar-bottom-5">'.date('M d, Y',strtotime($relatedEvent->event_stdate)).'</div>
                                        <h4 class="mar-0">' . $linkstart . $relatedEvent->title . $linkend . '</h4>
                                    </div>    
                                </div>     
                            </article>
                        ';
                    }
                    $i++;
                }
                $events_detail .= '
                            </div>
                        </div>
                ';
            }

            $sql = "SELECT (event_stdate) FROM tbl_events WHERE status='1' and type='1' GROUP BY YEAR(event_stdate) ORDER BY YEAR(event_stdate) DESC";
            $archives = Events::find_by_sql($sql);
            if (!empty($archives)) {
                $events_detail .= '
                    <div class="sidebar-item">
                        <h3 class="section-title">Archives</h3>
                        <ul class="sidebar-category">
                ';
                foreach ($archives as $archive) {
                    $year = date('Y', strtotime($archive->event_stdate));
                    $events_detail .= '
                        <li><a href="' . BASE_URL . 'events/' . $year . '/page/1">' . $year . '</a></li>
                    ';
                }
                $events_detail .= '
                        </ul>
                    </div>
                ';
            }
            $events_detail .= '
                    </div>
                </div>
            ';
        } else {
            redirect_to(BASE_URL . '404');
        }
    } else {
        redirect_to(BASE_URL . '404');
    }
}
$jVars['module:event-banner'] = $events_banner;
$jVars['module:event-detail'] = $events_detail;


/**
 * Events List Page
 */
$events_list_banner = $events_list_detail = $events_list_pagination = '';
if (defined('EVENT_PAGE')) {

    $events_list_banner .= '
        <div class="news-banner">
            <div class="banner">
                <div>
                    <img src="' . BASE_URL . 'template/cms/images/default-media-event-detail-banner.jpg">
                    <h2>Latest Happenings</h2>
                </div>
            </div>
        </div>
    ';

    foreach ($_POST as $key => $val) {
        $$key = $val;
    }

    if (!empty($search_term)) {
        $sql = "SELECT * FROM tbl_events WHERE status='1' AND type='1'AND (
                title LIKE '%{$search_term}%' OR 
                YEAR(event_stdate) LIKE '%{$search_term}%' OR 
                {fn MONTHNAME(event_stdate)} LIKE '%{$search_term}%' OR 
                meta_keywords LIKE '%{$search_term}%' OR 
                meta_description LIKE '%{$search_term}%' OR 
                published_in LIKE '%{$search_term}%') 
                ORDER BY event_stdate DESC";
        $Records = Events::find_by_sql($sql);

        if (!empty($Records)) {
            foreach ($Records as $record) {
                $images = unserialize($record->image);
                $file_path = SITE_ROOT . 'images/events/' . @$images[0];
                if (file_exists($file_path) and !empty(@$images[0])) {
                    $linkstart = $linkend = $published_in = '';
                    if (!empty($record->linksrc)) {
                        $linkstart = ($record->linktype == 1) ? '<a href="' . $record->linksrc . '" target="_blank">' : '<a href="' . BASE_URL . $record->linksrc . '">';
                        $linkend = '</a>';
                    } else {
                        $linkstart = (!empty($record->content)) ? '<a href="' . BASE_URL . 'eventsdetail/' . $record->slug . '">' : '';
                        $linkend = (!empty($record->content)) ? '</a>' : '';
                    }
                    if (!empty($record->published_in)) {
                        $published_in = '<h5><span style="font-weight: bold">Published:</span><br> ' . $record->published_in . '</h5></span>';
                    }
                    $comments_number = Review::getTotalSub($record->id);
                    $comments = ($comments_number == 1)?'comment':'comments';
                    $by = (!empty($record->published_in)) ? '<h6>By: '.$record->published_in.'</h6>' : '' ;
                    $events_list_detail .= '
                        <div class="col-md-4 col-sm-4 col-xs-12 mar-bottom-30">
                            <div class="grid">
                                <div class="grid-item">
                                    <div class="grid-image">
                                        <img src="' . IMAGE_PATH . 'events/' . $images[0] . '" alt="' . $record->title . '">
                                    </div>
                                    <div class="gridblog-content">
                                        <div class="date mar-bottom-15 d-flex justify-content-between">
                                            <div><i class="fas fa-calendar"></i> '.date('M d, Y', strtotime($record->event_stdate)).'</div>
                                            <!--<div style="text-decoration: underline;color: #3aaa36;">'.$comments_number.' '.$comments.'</div>-->
                                            <a href="'.BASE_URL.'eventsdetail/'.$record->slug.'#review_form" style="text-decoration: underline;color: #3aaa36;">'.$comments_number.' '.$comments.'</a>
                                        </div>
                                        <h3>' . $linkstart . $record->title . $linkend . '</h3>
                                        '.$by.'
                                        <p>'.$record->brief.'</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ';
                }
                
            }
        } else {
            $events_list_detail .= '
                <div class="col-md-12">
                    <h3 class="text-center">No Result Found</h3>
                </div>
            ';
        }

    } else {
        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $year = (isset($_REQUEST["year"]) and !empty($_REQUEST["year"])) ? $_REQUEST["year"] : "";

        if (!empty($year)) {
            $sql = "SELECT * FROM tbl_events WHERE status='1' AND type='1' AND YEAR(event_stdate) = " . $year . " ORDER BY event_stdate DESC";
        } else {
            $sql = "SELECT * FROM tbl_events WHERE status='1' AND type='1' ORDER BY event_stdate DESC";
        }
        $limit = 9;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $Records = Events::find_by_sql($sql);

        if (!empty($Records)) {
            foreach ($Records as $record) {
                $images = unserialize($record->image);
                $img = BASE_URL.'template/cms/images/list-default.jpg';
                $file_path = SITE_ROOT . 'images/events/' . @$images[0];
                if (file_exists($file_path) and !empty(@$images[0])) {
                    $img = IMAGE_PATH.'events/'.$images[0];
                }
                $linkstart = $linkend = $published_in = '';
                    if (!empty($record->linksrc)) {
                        $linkstart = ($record->linktype == 1) ? '<a href="' . $record->linksrc . '" target="_blank">' : '<a href="' . BASE_URL . $record->linksrc . '">';
                        $linkend = '</a>';
                    } else {
                        $linkstart = (!empty($record->content)) ? '<a href="' . BASE_URL . 'eventsdetail/' . $record->slug . '">' : '';
                        $linkend = (!empty($record->content)) ? '</a>' : '';
                    }
                    if (!empty($record->published_in)) {
                        $published_in = '<h5><span style="font-weight: bold">Published:</span><br> ' . $record->published_in . '</h5></span>';
                    }
                    $comments_number = Review::getTotalSub($record->id);
                    $comments = ($comments_number == 1)?'comment':'comments';
                    $by = (!empty($record->published_in)) ? '<h6>By: '.$record->published_in.'</h6>' : '' ;
                    $events_list_detail .= '
                    <div class="col-md-4 col-sm-4 col-xs-12 mar-bottom-30">
                            <div class="grid">
                                <div class="grid-item">
                                    <div class="grid-image">
                                        <img src="' . $img . '" alt="' . $record->title . '">
                                    </div>
                                    <div class="gridblog-content">
                                        <div class="date mar-bottom-15 d-flex justify-content-between">
                                            <div><i class="fas fa-calendar"></i> '.date('M d, Y', strtotime($record->event_stdate)).'</div>
                                            <!--<div style="text-decoration: underline;color: #3aaa36;">'.$comments_number.' '.$comments.'</div>-->
                                            <a href="'.BASE_URL.'eventsdetail/'.$record->slug.'#review_form" style="text-decoration: underline;color: #3aaa36;">'.$comments_number.' '.$comments.'</a>
                                        </div>
                                        <h3>' . $linkstart . $record->title . $linkend . '</h3>
                                        '.$by.'
                                        <p>'.$record->brief.'</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                ';
            }

            // Pagination
            if (!empty($year)) {
                $events_list_pagination .= get_front_pagination($total, $limit, $page, BASE_URL . 'events/' . $year);;
            } else {
                $events_list_pagination .= get_front_pagination($total, $limit, $page, BASE_URL . 'events');
            }
        }
    }

}
$jVars['module:events-list-banner'] = $events_list_banner;
$jVars['module:events-list-detail'] = $events_list_detail;
$jVars['module:events-list-pagination'] = $events_list_pagination;