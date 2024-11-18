<?php
$result = '';
$booking_code = Config::getField('hotel_code', true);
$menuRec = Menu::getMenuByParent(0, 1);

$current_url = $_SERVER["REQUEST_URI"];
$data = explode('/', $current_url);

if ($menuRec):
    $result .= '<ul id="menu">';
    foreach ($menuRec as $menuRow):
        $linkActive = $PlinkActive = '';
        $tot = strlen(SITE_FOLDER) + 1;
        $data = substr($_SERVER['REQUEST_URI'], $tot);

        if (!empty($data)):
            $linkActive = ($menuRow->linksrc == $data) ? " active" : "";
            $parentInfo = Menu::find_by_linksrc($data);
            if ($parentInfo):
                $PlinkActive = ($menuRow->id == $parentInfo->parentOf) ? " active" : "";
            endif;
        endif;
        $menusubRec = Menu::getMenuByParent($menuRow->id, 1);
        $drop1 = !empty($menusubRec) ? ' <i class=\'\'></i>' : '';
        $result .= '<li>';
        $result .= getMenuList($menuRow->name . $drop1, $menuRow->linksrc, $menuRow->linktype, $linkActive . $PlinkActive);
        /* Second Level Menu */
        if ($menusubRec):
            $result .= '<ul>';
            foreach ($menusubRec as $menusubRow):
                $menusub2Rec = Menu::getMenuByParent($menusubRow->id, 1);
                $chkparent2 = (!empty($menusub2Rec)) ? 1 : 0;
                $drop2 = !empty($menusub2Rec) ? 'gallery-width' : '';
                $result .= '<li>';
                $result .= getMenuList($menusubRow->name, $menusubRow->linksrc, $menusubRow->linktype, 'gallery-width', $chkparent2);
                $result .= '</li>';
            endforeach;
            $result .= '</ul>';
        endif;
        $result .= '</li>';
    endforeach;
endif;
$jVars['module:menu'] = $result;


//Footer Menu
$result1 = '';
$FmenuRec = Menu::getMenuByParent(0, 3);
if ($FmenuRec):
    $result1 .= '<ul class="footer-menu list-unstyled">';
    foreach ($FmenuRec as $FmenuRow):
        $result1 .= '<li>';
        $result1 .= getMenuList($FmenuRow->name, $FmenuRow->linksrc, $FmenuRow->linktype, '');
        $subRec = Menu::getMenuByParent($FmenuRow->id, 2);
        /*if($subRec):
            $result1.='<ul>';
             foreach($subRec as $subRow):
                 $result1.='<li>';
                        $result1.= getMenuList($subRow->name, $subRow->linksrc, $subRow->linktype,'child');
                    $result1.='</li>';
             endforeach;
            $result1.='</ul>';
        endif;*/
        $result1 .= '</li>';
    endforeach;
    $result1 .= '</ul>';
endif;
$jVars['module:footer-menu'] = $result1;



//Mobile Menu2
$resultmobile = '';
$booking_code = Config::getField('hotel_code', true);
$menuMobileRec = Menu::getMenuByParent(0, 1);

$current_url = $_SERVER["REQUEST_URI"];
$data = explode('/', $current_url);

if ($menuMobileRec):
    $resultmobile .= '<ul>';
    foreach ($menuMobileRec as $menuRow):
        $linkActive = $PlinkActive = '';
        $tot = strlen(SITE_FOLDER) + 2;
        $data = substr($_SERVER['REQUEST_URI'], $tot);

        if (!empty($data)):
            $linkActive = ($menuRow->linksrc == $data) ? " active" : "";
            $parentInfo = Menu::find_by_linksrc($data);
            if ($parentInfo):
                $PlinkActive = ($menuRow->id == $parentInfo->parentOf) ? " active" : "";
            endif;
        endif;
        $menusubRec = Menu::getMenuByParent($menuRow->id, 1);
        $drop1 = !empty($menusubRec) ? ' <i class=\'\'></i>' : '';
        $resultmobile .= '<li>';
        $resultmobile .= getMenuList($menuRow->name . $drop1, $menuRow->linksrc, $menuRow->linktype, $linkActive . $PlinkActive);
        /* Second Level Menu */
        if ($menusubRec):
            $resultmobile .= '<ul class="dropdown_menu">';
            foreach ($menusubRec as $menusubRow):
                $menusub2Rec = Menu::getMenuByParent($menusubRow->id, 1);
                $chkparent2 = (!empty($menusub2Rec)) ? 1 : 0;
                $drop2 = !empty($menusub2Rec) ? 'class="dropdown"' : '';
                $resultmobile .= '<li id="menu-item-' . $menusubRow->id . '" ' . $drop2 . '>';
                $resultmobile .= getMenuList($menusubRow->name, $menusubRow->linksrc, $menusubRow->linktype, '', $chkparent2);
                $resultmobile .= '</li>';
            endforeach;
            $resultmobile .= '</ul>';
        endif;
        $resultmobile .= '</li>';
    endforeach;
    $resultmobile .= '</ul>';
endif;

$jVars['module:mobile-menu'] = $resultmobile;
?>