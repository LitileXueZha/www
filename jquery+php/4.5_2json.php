<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/16
 * Time: 22:22
 */
$travelDetails = array(
    array(
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
    ),
    array(
        'origin' => '中国',
        'destination' => '南昌',
        'passengers' => array(
            array(
                'name' => '帅涛',
                'type' => '成年人',
                'age' => '20'
            ),
            array(
                'name' => '美晔',
                'type' => '未成年人',
                'age' => '17'
            )
        ),
        'travelD' => '2016.8.6'
    ),
    array(
        'origin' => '中国',
        'destination' => '吉安',
        'passengers' => array(
            array(
                'name' => '涛',
                'type' => '成年人',
                'age' => '19'
            ),
            array(
                'name' => '晔',
                'type' => '未成年人',
                'age' => '16'
            )
        ),
        'travelD' => '2016.1.1'
    )
);
header('Content-Type:text/json');
echo json_encode($travelDetails);