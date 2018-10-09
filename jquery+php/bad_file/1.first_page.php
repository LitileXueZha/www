<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
    <title>first_page</title>
    <script src="../js/jquery-3.1.0.js"></script>
</head>
<body>
<h1 align='center' id='msg'> 我在哪？</h1>
<label style='float: right' id="lang">我又在哪？</label>
<?php
//   echo '你大爷的！！！';
  $msgArray = array(
     'Hello World!',
     '嗨皮~you',
     '嗨皮~you',
     'Bonjour le monde!',
     'Hallo Welt!',
     'saluton mondo'
  );
  $langArray = array(
     '英语',
     '简体中文',
     '繁体中文',
     '法语',
     '德语',
     '欧语',
  );
  $idPrev = 0;
  for($i=0;$i<=10;$i++){
     $id = rand(0,8);
     if($idPrev == $id){
        $id = $idPrev + 1;
        if($id>8){
           $id = 8;
        }
     }
     $msg = $msgArray[$id];
     $lang = $langArray[$id];
     $idPrev = $id;
     echo '<script language="javascript">document.getElementById("msg").innerHTML = "'.$msg.'"</script>';
     echo '<script language="javascript">document.getElementById("lang").innerHTML = "'.$lang.'"</script>';
     echo str_repeat(' ',1024*64);
     flush();
     sleep(1);
  }
?>
</body>
</html>