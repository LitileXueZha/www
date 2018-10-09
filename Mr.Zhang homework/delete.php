<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/22
 * Time: 11:52
 */
$mysqli = new mysqli('127.0.0.1','root','123456','data');
if (mysqli_connect_errno()){
    die('加载数据库失败！');
}else{
    $res = '';
    $i = 0;
    $len = $_GET['len'];
    while($i < $len){
        $query = 'DELETE FROM info WHERE number="'.$_GET['a'][$i].'"';
        $mysqli -> query($query);
        $i++;
    }
}
