<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <style>
        #div1{
            width: 100px;
            height: 120px;
            box-shadow: 10px 10px 100px red;
            margin: 0 auto;
            text-align: center;
            line-height: 100px;
        }
    </style>
</head>
<body>
<div class="container">
    <div id="div1">php_study</div>
</div>
</body>
</html>
<!--     php脚本代码      -->
<!--=====================-->
<?php
   echo 'hello world!';
   $name = '帅气涛';
   echo '<br/> 我是 '.$name.' ';
   $age = '20';
   echo $age;
   unset($age);
   echo @$age;
?>