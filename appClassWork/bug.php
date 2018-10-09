<?php
    header('Content-Type: text/html;charset=utf-8');
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, "set names 'utf8'");
    mysqli_query($mysqli, "set character set 'utf8'");
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {
        $content = $_POST['content'];
        $time = date('Y-m-d-h-i-s');
        $query = "insert into bug values('$content', '$time')";
        $mysqli-> query($query);
    }
?>