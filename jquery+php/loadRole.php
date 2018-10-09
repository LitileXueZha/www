<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/13
 * Time: 21:08
 */

$mysqli = new mysqli('127.0.0.1','root','123456','example');
if (mysqli_connect_errno()){
    die('加载失败！');
}
else{
    $query = 'SELECT * FROM roleList';
    $res = '';
    if ($result = $mysqli->query($query)){
        if ($result -> num_rows > 0){
            while ($row = $result ->fetch_assoc()){
                $res .= '<option class="form-control" value="'.$row['id'].'">';
                $res .= $row['name'];
                $res .= '</option>';
            }
        }
        else{
            $res .= '无记录';
        }
    }
    else{
        $res .= $mysqli->error;
    }
}
echo $res;
