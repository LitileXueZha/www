<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>为大型记录集的数据分页（使用javascript分页）</title>
    <link rel="SHORTCUT ICON" href="pic/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
        #pages{
            text-align: center;
            -moz-appearance: none;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            var movies = $('#list').find('li').length;
            var Page = $('#page').val();
            var totalPage = Math.ceil(movies/Page);
            createNav();
            pager();
            $(window).keydown(function (e) {
                var E = e || event;
                if (e.keyCode == 13){
                    Page = $('#page').val();
                    totalPage = Math.ceil(movies/Page);
                    createNav();
                    pager();
                }
            });
            // 创建下拉框导航页
            function createNav() {
                var str = '';
                for (var i=0;i<totalPage;i++){
                    str+= '<option class="form-control" value="'+(i+1)+'">第'+(i+1)+'页</option>';
                }
                $('#pages').html('').append(str);
                $('#prev').hide();
            }
            // 跳转按钮方法
            function pager() {
                // 对初始记录进行分页
                $('#list').data('currentPage','').data('currentPage',1)
                    .find('li:gt('+(Page-1)+')').hide();
                $('#prev').click(function () {
                    var a = $('#list').data('currentPage');
                    goto(--a);
                });
                $('#next').click(function () {
                    var a = $('#list').data('currentPage');
                    goto(++a);
                });
                $('#pages').change(function () {
                    if ($(this).val() == '')  return;
                    goto($(this).val());
                });
            }
            // 为导航页写跳转方法
            function goto(num) {
                if (num == 1)  $('#prev').hide();
                else  $('#prev').show();
                if (num == totalPage)  $('#next').hide();
                else  $('#next').show();
                // 上、下页按钮的隐藏
                var from = (num-1)*Page;
                var to = from + (Page-1);
                $('#list').data('currentPage','').data('currentPage',num).find('li').show();
                $('#list>li:lt('+from+')').hide();
                $('#list>li:gt('+to+')').hide();
            }
        });
    </script>
</head>
<body>
<div class="container">
    <fieldset>
        <legend><span class="glyphicon glyphicon-facetime-video"></span><em><strong> 电影排行榜<sub><small> Top100</small></sub></strong></em></legend>
        <ol id="list">
            <?php
            /**
             * Created by PhpStorm.
             * User: 战不败象征
             * Date: 2016/10/26
             * Time: 19:51
             */
            $mysqli = new mysqli('127.0.0.1','root','123456','example');
            if ($mysqli->connect_errno){
                die('连接错误：'.$mysqli->connect_errno);
            }
            $query = 'select movieName from movies';
            if ($mysqli->query($query)){
                $result = $mysqli->query($query);
                if ($result->num_rows > 0){
                    while($row = $result->fetch_array()){
                        echo '<li class="list-group-item">'.$row[0].'</li>';
                    }
                }
                else{
                    echo '<strong>木有发现记录！</strong>';
                }
            }
            else {
                echo '查询失败，检查下数据库名称、查询语句还有其它。';
            }
            ?>
        </ol>
    </fieldset>
</div>
<hr/>
<table align="center">
    <tr>
        <td><button class="btn btn-default" id="prev">上一页</button></td>
        <td width="60%">
            <select class="form-control" id="pages">
                <option class="form-control">选&nbsp;&nbsp;择</option>
            </select>
        </td>
        <td><button class="btn btn-default" id="next">下一页</button></td>
    </tr>
</table>
<br/>
<input type="number" id="page" placeholder="10" value="10"/>
</body>
</html>
