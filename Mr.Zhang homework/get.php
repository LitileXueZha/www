<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/22
 * Time: 18:36
 */

$mysqli = new mysqli('127.0.0.1','root','123456','data');
if (mysqli_connect_errno()){
    die('数据库加载失败！');
}else{
    $query = 'SELECT * FROM userinfo WHERE number="'.$_GET['number'].'"';
    if ($res = $mysqli->query($query)){
        if ($res->num_rows > 0){
            $row = $res -> fetch_assoc();
            $arr = array(
                $row['name'],
                $row['sex'],
                $row['mail'],
                $row['phone']
            );
            echo json_encode($arr);
        }else{
            echo '无记录！';
        }
    }else{
        echo '错误i：'.$mysqli->error;
    }
}