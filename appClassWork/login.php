<?php
    header('Content-Type: text/html;charset=utf-8');
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, "set names 'utf8'");
    if(mysqli_connect_error()){
        die('服务器维护中');
    } else {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $query = "select password from users where username='$username'";
        if($res = $mysqli-> query($query)){
            if($res-> num_rows > 0){
                $row = $res-> fetch_array();
                if($row['password'] === $password){
                    echo 1;
                } else {
                    echo '用户名或密码错误！';
                }
            } else {
                echo '用户名不存在！';
            }
        } else {
            echo '服务器维护中';
        }
    }

?>