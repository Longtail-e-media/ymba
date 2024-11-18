<?php

$home_logo = '';
if (defined('HOME_PAGE')) {
    $logosCategories = LogoCategory::find_all();
    if (!empty($logosCategories)) {
        foreach ($logosCategories as $logosCategory) {
            $home_logo .= '
            <div class="main-title">
                <h2>' . $logosCategory->title . '</h2>
            </div>
            ';
            $logos = Logo::find_by_category($logosCategory->id);
            if (!empty($logos)) {
                $home_logo .= '<div class="row">';
                foreach ($logos as $logo) {
                    $file_path = SITE_ROOT . 'images/logo/' . $logo->image;
                    if (file_exists($file_path)) {
                        $linkstart = $linkend = '';
                        if(!empty($logo->linksrc)){
                            $linkstart = ($logo->linktype == 1) ? '<a href="' . $logo->linksrc . '" target="_blank">' : '<a href="' . $logo->linksrc . '">';
                            $linkend = '</a>';
                        }
                        $home_logo .= '
                            <div class="col-md-2 col-sm-6 col-xs-6">
                                '.$linkstart.'<img src="' . IMAGE_PATH . 'logo/' . $logo->image . '" alt="' . $logo->title . '">'.$linkend.'
                            </div>
                        ';
                    }
                }
                $home_logo .= '</div>';
            }
        }
    }
}
$jVars['module:home-logos'] = $home_logo;
?>