<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/14
 * Time: 14:12
 */
echo '<meta charset="utf-8"/>';
if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && $_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest') {
    echo '好了，回应成功，是ajax请求';
}
else{
    echo '响应失败，你给我发的什么东西啊，滚蛋儿';
}