<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/14
 * Time: 15:46
 */
echo '<meta charset="UTF-8"/>';
sleep(5);
if($_GET['what'] == 'good'){
    $names = array(
        '张三','李四','王五','赵钱孙李'
    );
    getH($names);
}
else if($_GET['what'] == 'bad'){
    $names = array(
        '张三san','李四si','王五wu','赵钱孙李liu'
    );
    getH($names);
}
function getH($names){
    $strR = '<ul class="list-group">';
    for($i=0;$i<count($names);$i++){
        $strR.= '<li class="list-group-item">'.$names[$i].'</li>';
    }
    $strR.= '</ul>';
    echo $strR;
}