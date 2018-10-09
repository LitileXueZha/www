<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/13
 * Time: 23:04
 */

$mysqli = new mysqli('127.0.0.1','root','123456','example');
if (mysqli_connect_errno()){
    echo '加载数据库失败';
}
else{
    if ($_GET){
        $query = 'DELETE FROM info WHERE id='.$_GET['name'];
        $mysqli->query($query);
    }
    $query = 'SELECT * FROM info';
    $res = '';
    if ($result = $mysqli->query($query)){
        if ($result->num_rows > 0){
            while ($row = $result->fetch_assoc()){
                $res .= '<tr>';
                $res .= '<td><input type="checkbox" name="'.$row['id'].'" onclick="selectB(this)"/></td>';
                $res .= '<td>'.$row['orderNum'].'</td>';
                $res .= '<td>'.$row['userName'].'</td>';
                $res .= '<td>'.$row['name'].'</td>';
                $res .= '<td>'.$row['userRole'].'</td>';
                $res .= '<td>'.$row['email'].'</td>';
                $res .= '<td>'.$row['status'].'</td>';
                $res .= '</tr>';
            }
        }
        else{
            $res .= '无记录！';
        }
    }
    else{
        $res .= '查询失败！'.$mysqli->error;
    }
}
echo $res;