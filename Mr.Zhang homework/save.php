<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/22
 * Time: 18:47
 */

$mysqli = new mysqli('127.0.0.1','root','123456','data');
if (mysqli_connect_errno()){
    die('加载数据库错误！');
}else{
//    $query = 'INSERT INTO userInfo VALUES("'
//        .$_GET['number'].'","'
//        .$_GET['name'].'","'
//        .$_GET['sex'].'","'
//        .$_GET['mail'].'","'
//        .$_GET['phone'].'",123456)';  //  插入
    $query = 'UPDATE userinfo SET name="'
        .$_GET['name'].'",sex="'
        .$_GET['sex'].'",mail="'
        .$_GET['mail'].'",phone="'
        .$_GET['phone'].'" WHERE number="'.$_GET['number'].'"';  //  修改
    $mysqli -> query($query);

}