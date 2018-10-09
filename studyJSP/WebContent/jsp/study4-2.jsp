<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>处理中文乱码</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	form{
    		width: 500px;
    		margin: 0 auto;
    		padding-top: 100px;
    	}
    </style>
    <script type="text/javascript"></script>
</head>
<body>
<div class='container'>
	<form action='study4-2_1.jsp'>
		<div class='input-group'>
			<input type='text' class='form-control' name='boy'/>
			<span class='input-group-btn'>
				<button class='btn btn-default'>action<i><b> 1</b></i></button>
			</span>
		</div>
	</form>
	<form action='study4-2_2.jsp'>
		<div class='input-group'>
			<input type='text' class='form-control' name='girl'/>
			<span class='input-group-btn'>
				<button class='btn btn-default'>action<i><b> 2</b></i></button>
			</span>
		</div>
	</form>
</div>
</body>
</html>