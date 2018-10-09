<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.calculate" %>
<jsp:useBean id="calculate" class="tao.calculate" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>四则运算bean</title>
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
	<form>
		<p>四则运算</p>
		<div class='row'>
			<div class='col-lg-2'>
				<input type='text' class='form-control' name='numberA' />
			</div>
			<div class='col-lg-1'>
				<select class='form-control' name='operator'>
					<option class='form-control' value='+'>+</option>
					<option class='form-control' value='-'>-</option>
					<option class='form-control' value='*'>*</option>
					<option class='form-control' value='/'>/</option>
				</select>
			</div>
			<div class='col-lg-2'>
				<input type='text' class='form-control' name='numberB' />
			</div>
			<button class='btn btn-success'>计算</button>
		</div>				
	</form>
	<jsp:setProperty property="*" name="calculate"/>
	<h2><jsp:getProperty property="result" name="calculate"/></h2>
</div>
<hr/>
</body>
</html>