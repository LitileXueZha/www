<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/14
 * Time: 14:46
 */
echo '<meta charset="UTF-8"/>';
if($_POST['Sex'] == 'male'){
    $sex = '男';
}
else if($_POST['Sex'] == 'female'){
    $sex = '女';
}
$resS1 = '恭喜!'.$_POST['Name'].'，你的信息保存成功。';
$resS2 = '邮件地址：'.$_POST['Email'];
$resS3 = '性别：'.$sex;
$resS4 = '国家：'.$_POST['country'];
  header('Content-type: text/html');
echo '<h2>'.$resS1.'</h2>';
echo '<ul>
   <li class="list-group-item">'.$resS2.'</li>
   <li class="list-group-item">'.$resS3.'</li>
   <li class="list-group-item">'.$resS4.'</li>
</ul>';