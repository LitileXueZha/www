<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/15
 * Time: 23:03
 */
echo '<meta charset="UTF-8"/>';
$bookID = $_GET['id'];
$action = $_GET['action'];
$strR = '';
$objX = simplexml_load_file('3.1common.xml');
foreach ($objX->book as $book){
    if ($book['index'] == $bookID){
        if ($action == 'year'){
            $strR.= '出版日期：'.$book->name['year'];
        }
        else if ($action == 'story'){
            $storys = $book->story;
            $strR.= '<ul>';
            foreach ($storys as $story){
                $strR.= '<li class="list-group-item">'.$story->title.'</li>';
            }
            $strR.= '</ul>';
        }
        else{
            $strR.= '没事做。老外说话就是逗...';
        }
        break;
    }
}
echo $strR;
