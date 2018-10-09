<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.triangle" %>
<<jsp:useBean id="triangle" class="tao.triangle" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>三角形bean</title>
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
<div class='container'>
	<form class='form-horizontal'>
		<p>计算三角形的面积</p>
		<div class='form-group'>
			<label class='control-label col-lg-3'>A：</label>
			<div class='col-lg-3'>
				<input type='number' class='form-control' name='sideA' />
			</div>
		</div>
		<div class='form-group'>
			<label class='control-label col-lg-3'>B：</label>
			<div class='col-lg-3'>
				<input type='number' class='form-control' name='sideB' />
			</div>
		</div>
		<div class='form-group'>
			<label class='control-label col-lg-3'>C：</label>
			<div class='col-lg-3'>
				<input type='number' class='form-control' name='sideC' />
			</div>
		</div>
		<p style='text-align: center'><button class='btn btn-primary'>计算</button></p>
	</form>
	<jsp:setProperty property="*" name="triangle"/>
	<jsp:getProperty property="sideA" name="triangle"/>、
	<jsp:getProperty property="sideB" name="triangle"/>、
	<jsp:getProperty property="sideC" name="triangle"/>--
	<jsp:getProperty property="triangle" name="triangle"/>--
	<jsp:getProperty property="area" name="triangle"/>
</div>
<hr/>
</body>
</html>