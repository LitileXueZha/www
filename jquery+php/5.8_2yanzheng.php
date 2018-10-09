<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/19
 * Time: 11:45
 */
$name = trim($_POST['Name']);
$age = trim($_POST['Age']);
$address = trim($_POST['Address']);
$website = trim($_POST['Website']);
$email = trim($_POST['Email']);
$errorA = array();
if($name == '' || $age == '' || $address == '' || $website == '' || $website == ''){
    array_push($errorA,'请输入所有项！');
}
if(filter_var($age,FILTER_VALIDATE_INT) == FALSE){
    array_push($errorA,'输入你的年龄（数字！）');
}
if (filter_var($email,FILTER_VALIDATE_EMAIL) == FALSE){
    array_push($errorA,'请输入正确的电子邮箱');
}
if (filter_var($website,FILTER_VALIDATE_URL) == FALSE){
    array_push($errorA,'请输入正确的网址');
}
foreach ($errorA as $error){
    echo '<p>'.$error.'</p>';
}
if(empty($errorA)){
    echo '验证成功！';
}
