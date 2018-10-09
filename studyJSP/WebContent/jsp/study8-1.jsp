<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>通过表单向servlet提交数据</title>
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
	<fieldset>
		<legend>通过表单向servlet提交数据</legend>
		<form class='input-group col-lg-10' action='getResult'>
			<label class='input-group-addon'>输入一个数，servlet求这个数的平方根：</label>
			<input type='text' class='form-control' name='num'/>
			<span class='input-group-btn'>
				<button class='btn btn-success'>计算</button>
			</span>
		</form>
		<%	request.setCharacterEncoding("utf-8"); %>
	</fieldset>
</div>
<hr/>
</body>
</html>