<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/22
 * Time: 14:55
 */
session_start();
$booksInfo = array();
$_SESSION['cart'] = $booksInfo;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Let's go shopping!</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
        .cart{
            position: absolute;
            right: 20px;
        }
        ul li div{
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <script>
        $(document).ready(function () {
            function flo() {
                var offsetTop = $(document).scrollTop() + 50;
                $('.cart').animate(
                    { top: offsetTop+'px'},
                    { duration: 500,queue: false}
                )
            }
            $(window).scroll(flo);
            flo();
            $('input:button').click(function () {
                $.post(
                    '6.7cal.php',
                    { bookId: $(this).prev().val(),
                      quantity: $(this).prevAll('.form-horizontal').find('select').val() },
                    function (data) {
                        $('.list-group').html(data);
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
    $objX = simplexml_load_file('6.7books.xml');
    foreach ($objX->book as $book){
        echo '<div class="row media">';
        echo '<div class="col-lg-2"/>';
        echo '<a href="javascript: void(0)" class="media-left">';
        echo '<img src="'.$book->src.'" class="img-rounded img-responsive"/>';
        echo '</a>';
        echo '</div>';
        echo '<div class="media-body col-lg-5">';
        echo '<h4 class="media-heading">'.$book->name.'</h4>';
        echo '<div><h3><em><small>￥: </small>'.$book->price.'</em></h3></div>';
    ?>
        <div class="form-horizontal row">
            <label class="control-label col-lg-4">数量：</label>
            <div class="col-lg-6">
                <select name="quantity" class="form-control" title="">
                    <option class="list-group-item" value="1">买一本</option>
                    <option class="list-group-item" value="2">买两本</option>
                    <option class="list-group-item" value="3">买三本</option>
                </select>
            </div>
        </div>
        <br/><br/><br/>
        <input type="hidden" value="<?php echo $book['id']; ?>"/>
        <input type="button" class="btn btn-danger pull-right" value="添加到购物车"/>
    <?php
    echo '</div></div>';
    }
    ?>
</div>
<div class="cart col-lg-3">
    <h1 align="center"><span class="glyphicon glyphicon-shopping-cart"></span></h1>
    <ul class="list-group">
        <li class="list-group-item">空空的，我好饿啊~</li>
    </ul>
</div>
</body>
</html>
