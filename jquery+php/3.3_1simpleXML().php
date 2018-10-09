<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>

    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('button').click(function () {
                if($('#blist').val() != ''){
                    $.get(
                            '3.3_2process.php',
                            {
                                id: $('#blist').val(),
                                action: $(this).attr('id')
                            },
                            function (data) {
                                $('#res').html(data);
                            }
                    );
                }
            });
        });
    </script>
</head>
<body>
<h2>What do you know?</h2>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <select class="form-control" id="blist" title="">
                <option class="list-group-item" value="">选择</option>
                <?php
                $objX = simplexml_load_file('3.1common.xml');
                foreach($objX->book as $book){
                   echo '<option class="list-group-item" value="'.$book['index'].'">'.$book->name.'</option>';
                }
                ?>
            </select>
        </div>
        <div class="col-lg-2">
            <button class="btn" id="year">获取书本的出版日期</button>
        </div>
        <div class="col-lg-1">
            <button class="btn" id="story">获取故事列表</button>
        </div>
    </div>
    <p id="res"></p>
</div>
<!--========================================================-->
<div class="navbar navbar-fixed-bottom" style="opacity: 0.7">
    <a href="index.html" class="btn btn-primary btn-block">首页</a>
    <br/><br/><br/>
</div>

</body>
</html>