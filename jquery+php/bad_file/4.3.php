<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/13
 * Time: 10:32
 */
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
    <title>外币兑换</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <script src="../js/jquery-3.1.0.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body>
<h2>外币兑换</h2>
<hr/>
<div class="container">
    <form action="?check" method="post">
        <div class="form-group form-inline">
            <label>输入：</label>
            <input class="form-control" type="text" name="quantity" placeholder="输入兑换多少">
        </div>
        <select class="form-control" name="currency" title="兑换列表">
            <option value="USD">美元</option>
            <option value="HKD">港币</option>
            <option value="EUR">欧元</option>
            <option value="GBP">英镑</option>
        </select>
        <button type="submit" class="btn btn-success">兑换</button>
    </form>
    <div id="msg"></div>
</div>
<?php
   if(isset($_REQUESET['check'])){
       define('USD', 6.125);
       define('HKD', 0.789);
       define('EUR', 7.899);
       define('GBP', 9.214);
       $quantity = intval($_REQUESET['quantity']);
       $currency = $_REQUESET['currency'];
       $amount = 0;
       switch ($currency){
           case 'USD':
               $amount = $quantity * USD;
               break;
           case 'HKD':
               $amount = $quantity * HKD;
               break;
           case 'EUR':
               $amount = $quantity * EUR;
               break;
           case 'GBP':
               $amount = $quantity * GBP;
               break;
       }
       echo '<script language="JavaScript">document.getElementById("msg").innerHTML = "'.$quantity.' '.$currency.'='.$amount.' RMB"</script>';
   }
   echo '<script language="javascript">document.getElementById("msg").innerHTML = "我的天"</script>';
   echo '我在计算机: ',__FILE__;
?>
</body>
</html>