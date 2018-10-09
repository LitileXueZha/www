<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/22
 * Time: 21:00
 */
$mysqli = new mysqli('127.0.0.1','root','123456','data');
if (mysqli_connect_errno()){
    die('加载数据库失败！');
}else{
    if ($_POST['tp'] == 'huoqu'){
        $query = 'SELECT password FROM userinfo WHERE number="'.$_POST['number'].'"';
        $query1 = 'SELECT name FROM userinfo WHERE number="'.$_POST['number'].'"';
        $res = $mysqli->query($query);
        $res1 = $mysqli->query($query1);
        $row1 = $res1->fetch_assoc();
        $row = $res->fetch_assoc();
        $arr = array($row1['name'], $row['password']);
        echo json_encode($arr);
    }else if ($_POST['tp'] == 'save'){
        $query2 = 'UPDATE userinfo SET password="'.$_POST['password'].'" WHERE number="'.$_POST['number'].'"';
        $mysqli->query($query2);
    }
}