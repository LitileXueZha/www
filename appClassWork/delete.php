<?php
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, 'set names utf8');
    mysqli_query($mysqli, 'set character set utf8');
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {
        $username = $_GET['username'];
        $createAt = $_GET['createAt'];
        $query = "delete from things where createAt='$createAt'";
        try{
            $mysqli-> query($query);
            $query = "select losts from users where username='$username'";
            $res = $mysqli-> query($query);
            if($res-> num_rows > 0){
                $row = $res -> fetch_array();
                $losts = $row['losts'];
                $losts += 1;
                $query = "update users set losts='$losts' where username='$username'";
                $mysqli-> query($query);
            }
        } catch(Exception $e){
            echo $e;
        }
    }
?>