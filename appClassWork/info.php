<?php
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, 'set names utf8');
    mysqli_query($mysqli, 'set character set utf8');
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {
        $username = $_GET['username'];
        $query  = "select founds,losts,email,photo,password,signature from users where username='$username'";
        $res = $mysqli-> prepare($query);
        $res-> execute();
        $res-> bind_result($founds, $losts, $email, $photo, $password, $signature);
        if($res-> fetch()){
            $data = array(
                'losts' => $losts,
                'founds' => $founds,
                'email' => $email,
                'photo' => $photo,
                'password' => $password,
                'signature' => $signature
            );
            echo json_encode($data);
        }
        $res-> close();
    }
?>