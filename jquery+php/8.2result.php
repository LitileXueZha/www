<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/24
 * Time: 21:10
 */
$mysqli = new mysqli('127.0.0.1','root','123456','exampledb');
$resStr = '';
$query = 'select functionName, summary, example from functions where languageId='.$_GET['id'];
if ($result = $mysqli->query($query)){
    if ($result->num_rows > 0){
        $resStr.= '<ul class="list-unstyled">';
        $i = 0;
        while($row = $result->fetch_assoc()){
            $i+= 1;
            $resStr.= '<li>';
            $resStr.= '<h3 data-toggle="collapse" data-target="#p'.$i.'"><span class="glyphicon glyphicon-pencil"></span> '.$row['functionName'].'&nbsp;&nbsp;<small>'.$row['summary'].'</small></h3>';
            $resStr.= '<pre id="p'.$i.'">'.$row['example'].'</pre>';
            $resStr.= '</li>';
            $resStr.= '';
        }
        $resStr.= '</ul>';
    }
    else{
        $resStr = '什么都没发现';
    }
}
echo $resStr;