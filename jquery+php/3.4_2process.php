<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/16
 * Time: 14:36
 */
echo '<meta charset="UTF-8"/>';
$objX = simplexml_load_file('3.1common.xml');
if (! $objX){
    echo '出错了，加载问题，我无法检测到对象！';
}
else{
    $resp = '';
    $act = $_GET['action'];
    switch ($act){
        case 'all':
            $book = $objX->xpath('//book/name');
            $resp.= '<ul class="form-control">';
            foreach ($book as $item){
                $resp.= '<li class="list-group-item">';
                $resp.= $item[0].'（'.$item['year'].'）';
                $resp.= '</li>';
            }
            break;
        case 'total':
            $storys = $objX->xpath('//story');
            $resp.= '<ul class="form-control">';
            foreach ($storys as $story){
                $resp.= '<li class="list-group-item">';
                $resp.= '<label>'.$story->title.'</label><br/><em>'.$story->quote.'</em>';
                $resp.= '</li>';
            }
            break;
        case 'last':
            $lastE = $objX->xpath('//book[last()]');
            echo '<strong>'.$lastE[0]->name.'('.$lastE[0]->name['year'].')</strong>';
            break;
        case 'year':
            $book = $objX->xpath('//book/name[@year<1994]');
            $resp.= '<ul class="form-control">';
            foreach ($book as $item){
                $resp.= '<li class="list-group-item">';
                $resp.= $item.'('.$item['year'].')';
                $resp.= '</li>';
            }
            $resp.= '</ul>';
            break;
    }
    echo $resp;
}