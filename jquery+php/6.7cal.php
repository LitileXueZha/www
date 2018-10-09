<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/22
 * Time: 18:27
 */
error_reporting(7);
session_start(); //使用$_SESSION时要先启动，否则无效

$booksInfo = $_SESSION['cart'];
if (count($booksInfo) > 0){
    $bookFound = false;
    for ($i=0;$i< count($booksInfo);$i++){
        if ($booksInfo[$i]['bookId'] == $_POST['bookId']){
            $booksInfo[$i]['quantity'] = $_POST['quantity'];
            $bookFound = true;
            break;
        }
    }
}
if (!$bookFound){
    $book = array(
        'bookId' => $_POST['bookId'],
        'quantity' => $_POST['quantity']
    );
    array_push($booksInfo,$book);
}
$_SESSION['cart'] = $booksInfo;
$Total = 0;
for ($i=0;$i< count($booksInfo);$i++){
    $aBook = $booksInfo[$i];
    $bookName = getBook($booksInfo[$i]['bookId'],'name');
    $bookPrice = getBook($booksInfo[$i]['bookId'],'price');
    $bookSrc = getBook($booksInfo[$i]['bookId'],'src');
    $totalPrice = $bookPrice * $booksInfo[$i]['quantity'];
    $Total+= $totalPrice;
    $str.= '<li class="list-group-item row" style="margin: 0">';
    $str.= '<div class="col-lg-2">';
    $str.= '<img src="'.$bookSrc.'" class="img-responsive"/>';
    $str.= '</div>';
    $str.= '<div class="col-lg-5">';
    $str.= $bookName;
    $str.= '</div>';
    $str.= '<div class="col-lg-3">';
    $str.= '<label>'.$bookPrice.'</label>';
    $str.= '</div>';
    $str.= '<div class="col-lg-2">'.$booksInfo[$i]['quantity'].'</div>';
    $str.= '</li>';
}
$str.= '<li class="list-group-item"><p class="text-right"><strong>共计： </strong>'.$Total.'</p></li>';
$str.= '<button class="btn btn-primary pull-right">买买买</button>';
echo $str;
function getBook($id,$ti){
    $objX = simplexml_load_file('6.7books.xml');
    foreach ($objX->book as $book){
        if ($book['id'] == $id){
            return $book->$ti;
        }
    }
    return false;
}