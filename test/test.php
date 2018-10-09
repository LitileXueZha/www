<!DOCTYPE html>
<html lang="en" manifest="offline.manifest">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="SHORTCUT ICON" href="../china.ico"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
    <script type="text/javascript" src="../bootstrap/js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <style>

    </style>
    <script type="text/javascript">
        function check(elem) {
            elem.innerHTML = navigator.onLine;
        }  //  检查有网？
        window.ononline = function () {
            alert('来网了！');
        };
        window.onoffline = function () {
            alert('没网了！');
        };
        function appcache(elem) {
            var s = '';
            switch(applicationCache.status){
                case 0:
                    s = '无缓存';
                    break;
                case 1:
                    s = '闲置';
                    break;
                case 2:
                    s = '检查中';
                    break;
                case 3:
                    s = '下载中';
                    break;
                case 4:
                    s = '更新完成';
                    break;
            }
            elem.innerHTML = s;
        }

        window.onload = function () {
            var indexedDB = window.indexedDB || window.mozIndexedDB || window.msIndexedDB || window.webkitIndexedDB;
            var req, database;
            req = indexedDB.open('admin');
//            console.log(req);
            req.onerror = function (e) {
                alert('出错：'+ e.target.errorCode);
            };
            req.onsuccess = function (e) {
                database = e.target.result;
//                alert(1);  //  这里是异步执行的
                console.log(database);
                if(database.version != '1.1'){
                    req = database.setVersion('1.1');
                } else{
                    alert(database.name +' '+ database.version);
                }
                var store = database.createObjectStore('users', { keyPath: 'username'});
                var reqs = store.add(user);
                var reqts = [];
                reqts.push(reqs);
                console.log(reqts);
            };
//            console.log(req, database);
            var user = {
                username: '德玛西亚之力',
                age: 20,
                kill: '正义',
                password: '1111'
            };
        }
    </script>
</head>
<body>
<hr/>
<div class="container">
    <p style="text-align: center">
        检查有网没<br/>
        <code>navigator.onLine</code><br/>
        <button class="btn btn-success" onclick="check(this)">看一看</button>
    </p>
    <ul>
        <li>online,当来网时触发</li>
        <li>offline，当断网时触发</li>
    </ul>
    <ul class="list-group">
        <li class="list-group-item">0: 无缓存</li>
        <li class="list-group-item">1：闲置</li>
        <li class="list-group-item">2：检查中</li>
        <li class="list-group-item">3：下载中</li>
        <li class="list-group-item">4：更新完成</li>
    </ul>
    <button class="btn" disabled>applicationCache.status</button>
    <button class="btn btn-default" onclick="appcache(this)">看一看</button>
    <hr/>
    <h2>本地存储数据库indexDB</h2>
    <pre>兼容处理：
        var idb = window.indexedDB || window.msIndexedDB || window.mozIndexedDB || window.webkitIndexedDB;
    </pre>
    <?php  echo "这是通过Php输出的内容";  ?>
</div>
<a href="/test.html">/ 的路径</a>
</body>
</html>
