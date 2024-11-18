<?php
header('Content-type: application/xml; charset=utf-8');
require_once("includes/initialize.php");

$xml = '';

$xml .= '<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="/sitemap.xsl"?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:xhtml="http://www.w3.org/1999/xhtml"
      xsi:schemaLocation="
            http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
            <url>
                <loc>' . BASE_URL . '</loc>
                <lastmod>2019-01-09T06:37:18+00:00</lastmod>
                <priority>1</priority>
            </url>';

$staticblocks = array('home', 'contact-us');

foreach ($staticblocks as $page) {
    $xml .= '<url>
                <loc>' . BASE_URL . $page . '</loc>
                <lastmod>2019-01-09T06:37:18+00:00</lastmod>
                <priority>0.9</priority>
               </url>
               ';
}

$pages = Article::find_all_active();
foreach ($pages as $page) {
    $xml .= '<url>
                    <loc>' . BASE_URL . 'page/' . $page->slug . '</loc>
                    <lastmod>' . date('Y-m-dTH:i:sP', strtotime($page->added_date)) . '</lastmod>
                    <priority>0.75</priority>
                   </url>
                   ';
}


$properties = Property::allProperty();
foreach ($properties as $prop) {
    $xml .= '<url>
                        <loc>' . BASE_URL . 'property/' . $prop->slug . '</loc>
                        <lastmod>' . date('Y-m-dTH:i:sP') . '</lastmod>
                        <priority>0.8</priority>
                       </url>
                       ';
}

$blogs = Blog::get_allblog();

foreach ($blogs as $blog) {
    $xml .= '<url>
                        <loc>' . BASE_URL . 'blog/' . $blog->slug . '</loc>
                        <lastmod>' . date('Y-m-dTH:i:sP', strtotime($blog->blog_date)) . '</lastmod>
                        <priority>0.85</priority>
                       </url>
                       ';
}


$xml .= '</urlset>';
echo $xml;


?>