<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.write" %>
<<jsp:useBean id="we" class="tao.write" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>写文件</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style></style>
    <script type="text/javascript"></script>
</head>
<body>
<hr/>
<fieldset class='container'>
	<legend>写文件FileOutputStream</legend>
	<form class='form-horizontal' style='width: 80%'>
		<div class='form-group'>
			<label class='control-label col-lg-6'>选择保存位置：</label>
			<div class='col-lg-6'>
				<select class='form-control' name='path'>
					<option class='form-control' value='C:/Users/cenbs/Desktop'>桌面</option>
					<option class='form-control' value='C:/wamp/www/studyJSP/WebContent/jsp/WEB-INF/classes/tao'>bean目录</option>
				</select>
			</div>
		</div>
		<div class='form-group'>
			<label class='control-label col-lg-6'>文件名：</label>
			<div class='col-lg-6'>
				<input type='text' class='form-control' name='name'/>
			</div>
		</div>
		<div class='form-group'>
			<label class='control-label col-lg-6'>文件内容：</label>
			<div class='col-lg-6'>
				<textarea class='form-control' name='content' rows=10></textarea>
			</div>
		</div>
		<button class='btn btn-success pull-right'>创建</button>
	</form><br/>
	<jsp:setProperty property="*" name="we"/>
	<p>这里貌似有效的只有txt文件。。。。。。</p>
</fieldset>
<hr/>
</body>
</html>