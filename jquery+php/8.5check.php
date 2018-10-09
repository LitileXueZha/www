<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/26
 * Time: 18:41
 */
$mysqli = new mysqli('127.0.0.1','root','123456','exampledb');
$query = 'select username as user from users where username="'.$_POST['name'].'"';
$result = $mysqli->query($query);
if ($result){
    if ($result->num_rows > 0){
        echo false;
    }
    else {
        echo true;
    }
}
else{
    echo false;
}