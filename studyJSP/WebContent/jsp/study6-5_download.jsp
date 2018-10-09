<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.download" %>
<jsp:useBean id="down" class="tao.download" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>文件下载</title>
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
	<legend>文件下载，response的setHeader()：</legend>
	<form class='form-horizontal' style='width: 80%'>
		<label class='control-label col-lg-6'>文件列表：</label>
		<br/>
		<div class='col-lg-6'></div>
		<div class='col-lg-6'>
			<label class='radio-inline'>
				<input type='radio' name='name' value='10.jpg'/>
				<span class='glyphicon glyphicon-picture'></span> 
				<i>10.jpg(新校区)</i>
			</label><br/>
			<label class='radio-inline'>
				<input type='radio' name='name' value='psb1.jpg'/>
				<span class='glyphicon glyphicon-picture'></span> 
				<i>psb1.jpg(新校区1)</i>
			</label><br/>
			<label class='radio-inline'>
				<input type='radio' name='name' value='维修项目流程.txt'/>
				<span class='glyphicon glyphicon-file'></span> 
				<i>维修项目流程.txt</i>
			</label><br/>
		</div>
		<div class='col-lg-6'></div>
		<div class='col-lg-4' style='padding: 10px 60px 0 0'>
			<button class='btn btn-success pull-right'>&nbsp;下载&nbsp;</button>
		</div>
	</form>
	<%	down.setResponse(response); %>
	<jsp:setProperty property="name" name="down" param="name"/>
</fieldset>
<hr/>
</body>
</html>