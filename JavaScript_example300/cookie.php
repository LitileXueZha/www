<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2017/1/7
 * Time: 14:09
 */
$f = tempnam('./cookie', 'cookie');
$ch = curl_init();
$url = 'http://www.baidu.com';
curl_setopt($ch, CURLOPT_COOKIEFILE, $f);