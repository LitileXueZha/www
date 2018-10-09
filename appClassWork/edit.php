<?php
    header('Content-Type: text/html;charset=utf-8');
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, "set names 'utf8'");
    mysqli_query($mysqli, "set character set 'utf8'");
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {
        $photo = $_FILES['photo'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $signature = $_POST['signature'];
        $dir = __DIR__;
        move_uploaded_file($photo['tmp_name'], "$dir/img/$email.png");
        $query = "update users set email='$email', password='$password', signature='$signature', photo='$email.png' where username='$username'";
        try{
            $mysqli-> query($query);
        } catch (Exception $e){
            echo $e;
        }
    }
?>