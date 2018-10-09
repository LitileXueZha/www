<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/12/22
 * Time: 9:50
 */

$mysqli = new mysqli('127.0.0.1','root','123456','data');
if(mysqli_connect_errno()){
    die('加载数据库失败！');
}
else{
    $query = 'SELECT * FROM info WHERE classId="'.$_GET['classId'].'"';
    $res = '';
    if ($result = $mysqli -> query($query)){
        if ($result -> num_rows > 0){
            while ($row = $result -> fetch_assoc()){
                $res .= '<tr>';
                $res .= '<td><input type="checkbox" onclick="checkD(this, 0)" value="'.$row['number'].'"/></td>';
                $res .= '<td>信计'.$row['classId'].'班</td>';
                $res .= '<td>'.$row['number'].'</td>';
                $res .= '<td>'.$row['name'].'</td>';
                $res .= '<td>'.$row['english'].'</td>';
                $res .= '<td>'.$row['computer'].'</td>';
                $res .= '<td>'.$row['math'].'</td>';
                $res .= '</tr>';
            }
        }else{
            $res .= '无记录！';
        }
    }else{
        $res .= '错误：'.$mysqli -> error;
    }
}
echo $res;