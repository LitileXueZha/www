<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/16
 * Time: 17:28
 */
echo '<meta charset="UTF-8"/>';
$bookI = $_POST['bookI'];
$title = $_POST['storyT'];
$quote = $_POST['quote'];
$objX = new DOMDocument();
$objX->load('3.1common.xml',LIBXML_NOBLANKS);
$books = $objX->getElementsByTagName('book');
foreach ($books as $book){
    if ($book->attributes->item(0)->value == $bookI){
        $story = $objX->createElement('story');
        $title = $objX->createElement('title',$title);
        $quote = $objX->createElement('quote',$quote);
        $story->appendChild($title);
        $story->appendChild($quote);
        $book->appendChild($story);
        break;
    }
}
if($objX->save('3.1common.xml') != FALSE){
    echo '保存成功了，nice！';
}
else{
    echo '失败！！！';
}