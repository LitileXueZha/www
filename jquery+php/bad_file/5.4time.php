<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/jquery-3.1.0.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h3>比大小：</h3>
    <input class="form-control" id="in1" placeholder="数字1">
    <input class="form-control" id="in2" placeholder="数字2">
</div>
</body>
</html>

<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/13
 * Time: 13:43
 */

   $time = date('Y/m/d');
   echo 'Today is ',$time,'<br/>';
   echo '时间戳 <br/>';
   $today = time();
   echo $today;
   $time2 = mktime(13,54,00,10,13,2016);
   echo '<br/>',$time2;
   echo '<br/>';
   $num1 = 2;
   $num2 = 5;
   if($num1 == $num2)
       echo 'true';
   else
       echo 'false';
   echo '<br/>';







?>