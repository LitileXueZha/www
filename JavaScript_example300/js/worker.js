/**
 * Created by 战不败象征 on 2017/3/15.
 */

var time = 0;
setInterval(function () {
    time ++;
    postMessage(time);
}, 1000);