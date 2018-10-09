<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <style>
        legend{
            font-size: 25px;
        }
        a{
            padding: 2%;
            margin: 5%;
            border: 1px solid rgb(28, 255, 208);
            border-radius: 5px;
            position: relative;
            top: 30px;
            background: rgba(28, 255, 208, 0.65);
            color: black;
            box-shadow: 10px 10px 10px black;
        }
    </style>
</head>
<body>
<div class="container">
    <fieldset>
        <legend><em><b>投票结果</b></em></legend>
        <br/>
        <?php
        $dom = new DOMDocument();
        $dom->load('5.9_2browsers.xml');
        $xpath = new DOMXPath($dom);
        $browsers = $xpath->query('//browser');
        echo '<ul>';
        foreach ($browsers as $browser){
            $name = $browser->getAttribute('name');
            $votes = $browser->getAttribute('votes');
            echo '<li style="list-style: none">';
            echo '<img src="pic/'.$name.'.png" width="50" height="50" style="opacity: 0.5;z-index: -1"/>';
            echo '<progress style="width: '.$votes.'%"></progress><label>'.$votes.'票</label>';
            echo '</li>';
        }
        echo '</ul>';
        ?>
    </fieldset>
</div>
<div id="revote">
    <a href="5.9_1投票系统.html" role="button"><abbr title="点击">没投票？没投投两票，没投投两票</abbr></a>
</div>
</body>
</html>