<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/15
 * Time: 11:53
 */
echo '<meta charset="UTF-8"/>';
echo '使用SampleXML()从文件和字符串加载XML<br/>';
libxml_use_internal_errors(true);
$objX = simplexml_load_file('3.1common.xml');
if (!$objX){
    $errors = libxml_get_errors();
    foreach ($errors as $error){
        echo $error->message.'<br/>';
    }
}
else{
    foreach($objX->book as $book){
        echo $book->name.'<br/>';
    }
}
echo '<div class="navbar navbar-fixed-bottom" style="opacity: 0.7">
    <a href="index.html" class="btn btn-primary btn-block">首页</a>
    <br/><br/><br/>
</div>
';
