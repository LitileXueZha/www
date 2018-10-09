/**
 * Created by 战不败象征 on 2017/3/8.
 */
window.onerror = function (msg, url, line) {
    var x = window.innerWidth || document.body.clientWidth;
    var y = window.innerHeight || document.body.clientHeight;
    // console.log('屏幕宽：' + x + '，高：' + 'px');
    var str = '<i style="font-size: 25px">1.</i> 错误消息 -- <span style="color: red">' + msg + '</span><br/>';
    str += '<i style="font-size: 25px">2.</i> 地址 -- ' + url + '<br/>';
    str += '<i style="font-size: 25px">3.</i> 行数 -- <strong>' + line + '</strong>';
    //  以上是错误消息
    if(document.getElementById('errorDiv')){
        var d1 = document.getElementById('errorDiv');
        d1.style.display = 'block';
        var dd1 = d1.getElementsByTagName('div')[0];
        dd1.innerHTML = str;
    }  //  判断是否存在，否则新建一个
    else{
        var d = document.createElement('div');
        d.id = 'errorDiv';
        d.style.width = x + 'px';
        d.style.height = y + 'px';
        d.style.background = 'rgba(0,0,0,0.46)';
        d.style.position = 'absolute';
        d.style.top = 0;
        d.style.zIndex = '998';
        document.body.appendChild(d);
        var dd = document.createElement('div');
        dd.style.width = '50%';
        dd.style.height = 'auto';
        dd.style.margin = (y/2-100)+'px auto';
        dd.style.padding = '20px';
        dd.style.boxShadow = '0 0 20px 5px blue inset';
        dd.style.background = 'rgba(255,255,255,0.7)';
        dd.style.zIndex = '999';
        dd.innerHTML = str;
        d.appendChild(dd);
        d.onclick = function () {
            d.style.display = 'none';
        };
        dd.onclick = function (e) {
            var E = e || event;
            E.cancelBubble = true;
            d.style.display = 'block';
        }
    }
};