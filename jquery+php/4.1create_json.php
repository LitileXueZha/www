<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/16
 * Time: 21:23
 */
echo '<meta charset="UTF-8"/>';
$travelD = array(
    'origin' => '中国',
    'destination' => '江西',
    'passengers' => array(
        array(
            'name' => '帅气涛',
            'type' => '成年人',
            'age' => '21'
        ),
        array(
            'name' => '美丽晔',
            'type' => '未成年人',
            'age' => '18'
        )
    ),
    'travelD' => '2016.10.16'
);
echo json_encode($travelD);
echo '<br/>';
//   在php中读取JSON
$json = <<<JSON
{
    'origin': '中国',
    'destination': '江西',
    'passengers': [
        {
            'name': '帅气涛',
            'type': '成年人',
            'age': '21'
        },
        {
            'name': '美丽晔',
            'type': '未成年人',
            'age': '18'
        }
    ],
    'travelD': '2016.10.16'
}
JSON;
echo '<pre>';
$obJson = json_decode($json);
print_r ($obJson);
echo '</pre>';
#####  捕获JSON解析错误
#####  ===============
switch (json_last_error()){
    case JSON_ERROR_NONE:
        echo '旅行时间：'.$obJson->travelD;
        break;
    case JSON_ERROR_DEPTH:
        echo 'json字符太长，溢出了！';
        break;
    case JSON_ERROR_CTRL_CHAR:
        echo '控制字符出错了！';
        break;
    case JSON_ERROR_SYNTAX:
        echo '语法错误，自己检查去吧';
        break;
}
