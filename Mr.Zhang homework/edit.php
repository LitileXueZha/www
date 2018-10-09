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
}else {
    $query = 'SELECT * FROM info WHERE number="' . $_GET['number'] . '"';
    if ($result = $mysqli->query($query)) {
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $arr = array(
                $row['classId'],
                $row['number'],
                $row['name'],
                $row['english'],
                $row['computer'],
                $row['math'],
            );
            echo json_encode($arr);
        } else {
            echo '无记录！';
        }
    } else {
        echo '错误：' . $mysqli->error;
    }
}