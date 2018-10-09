<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/21
 * Time: 20:27
 */

$mysqli = new mysqli('127.0.0.1','root','123456','data');
if (mysqli_connect_errno()){
    die('加载失败');
}
else{
    $query = 'SELECT password FROM login WHERE user="'.$_POST['user'].'"';
    $res = '';
    if ($result = $mysqli->query($query)){
        if($result -> num_rows > 0){
            if($row = $result->fetch_assoc()){
                if ($_POST['password'] == $row['password']){
                    $res = 1;
                }
                else{
                    $res = 0;
                }
            }
        }
        else{
            $res = '2';
        }
    }
    else{
        $res .= '错误：'.$mysqli->error;
    }
}
echo $res;