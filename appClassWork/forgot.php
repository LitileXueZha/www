<?php
    header('Content-Type: text/html;charset=utf-8');
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, "set names 'utf8'");
    mysqli_query($mysqli, "set character set 'utf8'");
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {
        $email = $_POST['email'];
        $password = $_POST['password'];
        $query = "update users set password='$password' where email='$email'";
        try{
            $mysqli-> query($query);
            echo '修改成功,下次别忘了哦';
        } catch(Exception $e){
            echo '服务器出错了...请稍后再试';
        }
    }
?>