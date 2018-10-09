<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="SHORTCUT ICON" href="pic/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
        h3{
            cursor: pointer;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('select').change(function () {
                if ($(this).val() == '') return false;
                $.get(
                    '8.2result.php',
                    { id : $(this).val() },
                    function (data) {
                        $('#res').html(data);
                    }
                );
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
     * Date: 2016/10/23
     * Time: 22:36
     */
    $mysqli = new mysqli('127.0.0.1','root','123456','exampleDB');
    if (mysqli_connect_errno()){
        die('无法连接数据库！');
    }
    else{
        $query = 'SELECT * FROM language';
        if ($result = $mysqli->query($query)){
            if ($result->num_rows > 0){
                ?>
                <div class="row form-horizontal">
                    <div class="col-lg-2">
                        <label class="control-label">选择编程语言：</label>
                    </div>
                    <div class="col-lg-7">
                        <select class="form-control" title="">
                            <option class="list-group-item" value=""></option>
                            <?php
                            while($row = $result->fetch_assoc()){
                                ?>
                                <option class="list-group-item" value="<?php echo $row['id']; ?>">
                                    <?php
                                    echo $row['languageName'];
                                    ?>
                                </option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <p id="res"></p>
    <?php
            }
            else{
                echo '没发现记录！';
            }
            $result->close();
        }
        else{
            echo 'Error in query: $query.'.$mysqli->error;
        }
    }
    $mysqli->close();
?>
</div>
<a href="8.3dataToDatabase.php" role="button" class="btn btn-primary btn-block">插入</a>
</body>
</html>
