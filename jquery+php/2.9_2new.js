/**
 * Created by 战不败象征 on 2016/10/14.
 */
function addE() {
    // alert('加载成功！');
    $('#bold').click(function () {
        $('#txt').css('font-weight','bold');
    });
    $('#color').click(function () {
        $('#txt').css('color','red');
    });
    $('#text').click(function () {
        $('#txt').html('<em> 这是一段新的文字！</em>');
    });
}