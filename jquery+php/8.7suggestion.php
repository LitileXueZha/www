<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/27
 * Time: 19:47
 */
$mysqli = new mysqli('127.0.0.1','root','123456','example');
if (mysqli_connect_errno()){
    echo false;
}
else {
    $query = 'select username from users where username like "%'.$_GET['input'].'%"';
    if ($result = $mysqli->query($query)){
        if ($result->num_rows > 0){
            $arr = array();
            while ($row = $result->fetch_array()){
                array_push($arr,$row[0]);
            }
            echo json_encode($arr);
        }
        else {
            echo 96;
        }
    }
    else{
        echo 96;
    }
}
