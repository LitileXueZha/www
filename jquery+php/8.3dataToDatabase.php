<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>dataToDatabase</title>
    <link rel="SHORTCUT ICON" href="pic/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
        textarea{
            resize: none;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#frm').submit(function () {
                var flag = true;
                $('#res').empty();
                $('.form-control').each(function () {
                    if (jQuery.trim($(this).val()) == ''){
                        flag = false;
                    }
                });
                if (!flag){
                    $('#res').html('<div class="alert alert-danger">你得填完所有空才行啊！<button class="close" data-dismiss="alert">&times;</button></div>');
                    return false;
                }
                else {
                    return true;
                }
            });
        });
    </script>
</head>
<body>
<div class="container">
    <br/>
    <?php
    /**
     * Created by PhpStorm.
     * User: 战不败象征
     * Date: 2016/10/24
     * Time: 21:39
     */
    $mysqli = new mysqli('127.0.0.1','root','123456','exampledb');
    if (isset($_POST['save'])){
        $language = $mysqli->real_escape_string($_POST['language']);
        $functionName = $mysqli->real_escape_string($_POST['functionName']);
        $summary = $mysqli->real_escape_string($_POST['summary']);
        $example = $mysqli->real_escape_string($_POST['example']);
        $query = 'insert into functions (languageId,functionName,summary,example) VALUES ('.$language.', "'.$functionName.'", "'.$summary.'", "'.$example.'")';
        if ($mysqli->query($query)){
            echo '保存成功！';
        }
        else {
            echo '失败了....';
        }
    }
    $query = 'select * from language';
    if ($result = $mysqli->query($query)){
        if ($result->num_rows > 0){
//           ?>
            <fieldset>
                <legend>添加信息 <em><span class="glyphicon glyphicon-pencil"></span></em></legend>
                <form action="" method="post" id="frm">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-lg-3">
                                <label class="control-label">选择编程语言：</label>
                            </div>
                            <div class="col-lg-5">
                                <select name="language" class="form-control" title="">
                                    <option class="list-group-item" value="">选择</option>
                                    <?php
                                    while ($row = $result->fetch_assoc()){
                                        ?>
                                        <option class="list-group-item" value="<?php echo $row['id']; ?>"><?php echo $row['languageName']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-3">
                                <label class="control-label">方法名字：</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="functionName" placeholder="functionName"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-3">
                                <label class="control-label">简单介绍：</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="summary" placeholder="summary"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-3">
                                <label class="control-label">举个例子说：</label>
                            </div>
                            <div class="col-lg-5">
                                <textarea class="form-control" name="example" placeholder="example" cols="30" rows="10"></textarea>
                            </div>
                        </div>
                    </div>
                    <p id="res"></p>
                    <input type="submit" class="btn btn-default" name="save" value="保存"/>
                    <a href="8.2dataFromDatabase.php" role="button" class="btn btn-primary ">查看</a>
                </form>
            </fieldset>
    <?php
        }
        else {
            echo '没记录啊';
        }
        $result->close();
    }
    else {
        $mysqli->close();
    }
    ?>
</div>
</body>
</html>