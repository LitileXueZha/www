<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/22
 * Time: 15:06
 */

$mysqli = new mysqli('127.0.0.1','root','123456','data');
if (mysqli_connect_errno()){
    die('数据库加载失败！');
}else{
    $query1 = 'UPDATE info SET classId="'
        .$_POST['classId'].'",name="'
        .$_POST['name'].'",english="'
        .$_POST['english'].'",computer="'
        .$_POST['computer'].'",math="'
        .$_POST['math'].'" WHERE number="'
        .$_POST['number'].'"';
    $mysqli -> query($query1);
    $quer = 'SELECT * FROM info WHERE number="'.$_POST['number'].'"';
    if ($result = $mysqli->query($quer)){
        echo 1;
    }else{
        echo 0;
    }
}