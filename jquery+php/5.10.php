<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/20
 * Time: 23:47
 */
$text = $_POST['text'];
echo trim(strip_tags($text,'<b><ins><i><strong>'));