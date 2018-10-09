<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2017/3/10
 * Time: 17:10
 */

error_reporting(E_ALL^E_WARNING^E_NOTICE);
$mysqli = new mysqli('127.0.0.1', 'root', '123456', 'data');
if(mysqli_connect_errno()){
    die('数据库加载失败！');
} else{
    if($_POST['ajax']){            //  这里是异步加载用户名
        $query = 'SELECT user FROM tao WHERE user="'.$_POST['name'].'"';
        if($res = $mysqli->query($query)){
            if($res->num_rows > 0){
                echo 0;
            } else{
                echo 1;
            }
        } else{
            echo '错误：'.$mysqli->error;
        }
    } else if($_POST['type'] == 'signUp'){  //  这里是注册
        $query = 'INSERT INTO tao VALUES("'.$_POST['name'].'","'.$_POST['password'].'")';
        $mysqli->query($query);
    } else{  //  这里是登陆
        $query = 'SELECT password FROM tao WHERE user="'.$_POST['name'].'"';
        $res = $mysqli->query($query);
        if($res->num_rows > 0){
            $row = $res->fetch_assoc();
            if($row['password'] == $_POST['password']){
                $js = '<script>';
                $js .= 'alert("登陆成功！")';
                $js .= '</script>';
                echo $js;
            } else{
                echo '<script>alert("登陆失败！\\n密码错误"); var t = 0;</script>';  //  密码错误
            }
        } else{
            echo '<script>alert("登陆失败！\\n用户名不存在")</script>';  //  帐户名不存在
        }
    }
}