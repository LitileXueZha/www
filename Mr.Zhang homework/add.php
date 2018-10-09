<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/21
 * Time: 23:43
 */
$mysqli = new mysqli('127.0.0.1','root','123456','data');
if (mysqli_connect_errno()){
    die('加载失败！');
}
else{
    $query = 'INSERT INTO info VALUES("'
        .$_GET['classId'].'","'
        .$_GET['number'].'","'
        .$_GET['name'].'","'
        .$_GET['english'].'","'
        .$_GET['computer'].'","'
        .$_GET['math'].'")';
    $mysqli -> query($query);
    echo 1;
}