<?php
    header('Content-Type: text/html;charset=utf-8');
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, "set names 'utf8'");
    mysqli_query($mysqli, "set character set 'utf8'");
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {
        $username = $_POST['username'];
        $name = $_POST['name'];
        $sex = $_POST['sex'];
        $ID = $_POST['ID'];
        $studentID = $_POST['studentID'];
        $type = $_POST['type'];
        $academy = $_POST['academy'];
        $moreInfo = $_POST['moreInfo'];
        $location = $_POST['location'];
        $createAt = time();
        $query = "insert into things values('$name', '$sex', '$ID', '$studentID', '$type', '$academy', '$location', '$moreInfo', '$createAt', '$username')";
        try{
            $mysqli-> query($query);
            $query = "select founds from users where username='$username'";
            $res = $mysqli-> query($query);
            if($res-> num_rows > 0){
                $row = $res-> fetch_array();
                $founds = $row['founds'];
                echo $founds;
                $founds += 1;
                $query = "update users set founds='$founds' where username='$username'";
                $mysqli-> query($query);
            }
        } catch (Exception $e){
            echo $e;
        }
    }
?>