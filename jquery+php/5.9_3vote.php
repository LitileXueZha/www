<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/19
 * Time: 16:15
 */
if (isset($_COOKIE['voted'])){
    $message = '同学，你今天投过票了，明天再来吧！';
}
else{
    $message = 'ok';
    $dom = new DOMDocument();
    $dom->load('5.9_2browsers.xml');
    $xpath = new DOMXPath($dom);
    $units = $xpath->query('//browser');
    foreach ($units as $unit){
        $value = $unit->getAttribute('value');
        if($value == $_POST['value']){
            $votes = $unit->getAttribute('votes');
            $unit->setAttribute('votes',++$votes);
//            setcookie('voted',true,time()+(24*60*60));
            break;
        }

    }
    $dom->save('5.9_2browsers.xml');
}
echo $message;