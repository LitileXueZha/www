<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
    <title>DOM扩展</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
        textarea{
            resize: none;
            overflow-y: hidden;
            border: none;
        }
        h1{
            cursor: pointer;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('h1').click(function () {
                $(this).next('ul').toggle('slow');
            });
            $('#add').click(function () {
                $.post(
                    '3.5process.php',
                    {
                        bookI: $('#bList').val(),
                        storyT: $('#sName').val(),
                        quote: $('#quote').val()
                    },
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
    <div class="row">
        <h2>使用DOM扩展读取XML</h2>
        <?php
        /**
         * Created by PhpStorm.
         * User: 战不败象征
         * Date: 2016/10/16
         * Time: 15:13
         */
        echo '<meta charset="UTF-8"/>';
        $objX = new DOMDocument();
        $objX->load('3.1common.xml',LIBXML_NOBLANKS);
        $books = $objX->getElementsByTagName('book');
        foreach ($books as $book){
            echo '<div class="col-lg-3">';
            echo '<div class="container"><br/>';
            echo '<h1>'.$book->firstChild->nodeValue.'('.$book->firstChild->attributes->item(0)->value.')</h1>';
            $storys = $book->getElementsByTagName('story');
            echo '<ul class="form-control">';
            foreach ($storys as $story){
                echo '<li class="list-group-item">'.$story->firstChild->nodeValue.'</li>';
            }
            echo '</ul></div></div>';
        }
        ?>
    </div>
    <br/><br/><br/><br/><br/>
    <div class="row">
        <h2>使用DOM扩展创建XML</h2>
        <?php
        $objX = new DOMDocument('1.0','utf-8');/* <?xml version="1.0" encoding="utf-8" ?> */
        $books = $objX->createElement('books');
        $book = $objX->createElement('book');
        $attrI = new DOMAttr('index','4');
        $book->appendChild($attrI);
        $bookN = $objX->createElement('name','这是书本的名字');
        $attrY = new DOMAttr('year','2016');
        $bookN->appendChild($attrY);
        $story = $objX->createElement('story');
        $title = $objX->createElement('title','书本的标题');
        $quote = $objX->createElement('quote','书本引用、或是定价');
        $story->appendChild($title);
        $story->appendChild($quote);
        $book->appendChild($story);
        $books->appendChild($book);
        $objX->appendChild($books);
        if ($objX->save('3.5new common.xml') != FALSE){
            echo '我写的XML保存成功，耶~';
        }
        else{
            echo '保存失败了，什么鬼？？？？';
        }
        ?>
    </div>
    <br/><br/><br/><br/>
    <div class="row">
        <h2>使用DOM扩展修改XML</h2><br/>
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <label for="bList">书本：</label>
                </div>
                <div class="col-lg-6">
                    <select id="bList" class="form-control">
                        <option class="list-group-item">选择</option>
                        <?php
                        $objX = new DOMDocument();
                        $objX->load('3.1common.xml',LIBXML_NOBLANKS);
                        $books = $objX->getElementsByTagName('book');
                        $title = $objX->getElementsByTagName('title');
                        foreach( $books as $book ){
                            echo '<option class="list-group-item" value="'.$book->attributes->
                                item(0)->value.'">'.$book->firstChild->nodeValue.'</option>';
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2">
                    <label for="sName">故事的名字：</label>
                </div>
                <div class="col-lg-4">
                    <input type="text" class="form-control" id="sName" placeholder=""/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2">
                    <label for="quote">定价、或是引用：</label>
                </div>
                <div class="col-lg-5">
                    <textarea class="form-control" id="quote" rows="6" placeholder=""></textarea>
                </div>
            </div>
            <br/>
            <div class="row">
                <button class="btn btn-primary col-lg-2" id="add">添加！</button>
                <div class="col-lg-6"><label id="res"></label></div>
            </div>
        </div>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    </div>
</div>
<!--============================================================-->
<div class="navbar navbar-fixed-bottom" style="opacity: 0.7">
    <a href="index.html" class="btn btn-primary btn-block">首页</a>
    <br/><br/><br/>
</div>
</body>
</html>


