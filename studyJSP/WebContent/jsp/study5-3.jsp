<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.lastFile" %>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>bean辅助类</title>
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
<div class='container'>
	<h1>查找目录里指定后缀名文件</h1> <br/>
	<form method='post' style='padding-left: 100px'>
	<div class='input-group' style='width: 400px;margin-bottom: 20px'>
		<span class='input-group-addon' style='padding-left: 26px'>输入目录:</span>
		<input type='text' class='form-control' name='path'>
	</div>
	<div class='input-group' style='width: 455px'>
		<span class='input-group-addon'>输入后缀名:</span>
		<input type='text' class='form-control' name='extendName' />
		<span class='input-group-btn'>
			<button class='btn btn-success'>&nbsp;&nbsp;<span class='glyphicon glyphicon-search'> </span>&nbsp;&nbsp;</button>
		</span>
	</div>
	</form>
	<%	request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="file" class="tao.lastFile" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="file"/>
	<mark><jsp:getProperty property="path" name="file"/></mark>目录中，扩展名是：
	<jsp:getProperty property="extendName" name="file"/>文件有：
	<jsp:getProperty property="allName" name="file"/>
</div>
<hr/>
</body>
</html>