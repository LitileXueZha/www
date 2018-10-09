<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="com" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>title</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	form{
    		width: 500px;
    		padding-top: 50px;
    		margin: 0 auto;
    	}
    </style>
    <script type="text/javascript"></script>
</head>
<body>
<div class='container'>
	<form class='form'>
			<div class='input-group'>
				<input type='text' class='form-control' name='my'/>
				<span class='input-group-btn'>
					<button class='btn btn-primary'>计算</button>
				</span>
			</div>
	</form>
<%	String text = request.getParameter("my");
	if(text == null){
		out.print("输入文字");
	} else{
%>
		<p>调用tag文件计算平方根</p>
		<com:sqrtTag my="<%= text %>"/>
<%
	}
%></div>
</body>
</html>
