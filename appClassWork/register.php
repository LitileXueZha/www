<?php
    header('Content-Type: text/html;charset=utf-8');
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, "set names 'utf8'");
    mysqli_query($mysqli, "set character set 'utf8'");
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {

        // 查询是否邮箱已注册
        $email = $_POST['email'];
        $query = "select * from users where email='$email'";
        if($res = $mysqli-> query($query)){
            if($res-> num_rows > 0){
                // 数据库已有记录，邮箱被人使用！！！
                die('0');
            }
        } else {
            echo '查询失败';
        }

        // 注册
        if($_POST['validateRegister'] == 'true'){
            $username = $_POST['username'];
            $email = $_POST['email'];
            $password = $_POST['password'];
            $query = "insert into users values('$username', '$email', '$password', 0, 0, 0, null, null)";
            $res = $mysqli-> query($query);
            if($res){
                // 注册成功
                echo '欢迎加入我们 ^_^';
            } else {
                // 注册失败，好歹提示下用户
                echo '出错了';
            }
        }
    }
?>