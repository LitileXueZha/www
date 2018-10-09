<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>Charset</title>
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
	<h3>Hello，你看到的这是第一种，把contentType里有个<i><b>C</b></i>harset</h3>
	<%	String a = request.getParameter("boy"), s; 
		if(a == ""){
			s = "大兄弟，你没输入信息啊！";
		}else{
			s = "很好，你输入的是：<ins>" + a + "</ins";
		}
	%>
	<div class='alert alert-success'>
		<button class='close' data-dismiss='alert'>&times;</button>
		<label><%= s %></label>
	</div>
</div>
</body>
</html>