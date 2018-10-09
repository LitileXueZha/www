<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/29
 * Time: 17:40
 */
define('API_KEY','2378e26e2949d472b74147faf9826749');
$url = 'https://api.flickr.com/services/rest/?method=flickr.photos.search';
$url.= '&api_key='.API_KEY;
$url.= '&tags='.$_POST['Tag'];
$url.= '&pre_page='.$_POST['NumImage'];
$url.= '&format=json';
$url.= '&nojsoncallback=1';
header('Cotent-Type:text/json;');
echo file_get_contents($url);