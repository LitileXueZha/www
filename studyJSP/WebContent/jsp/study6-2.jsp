<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.readFile" %>
<<jsp:useBean id="read" class="tao.readFile" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>读取文件</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	.navbar-right{
    		margin-right: -6px !important;
    	}
    </style>
    <script type="text/javascript">
    	window.onload = function(){
    		var ul = document.querySelector('.dropdown-menu');
    		ul.onclick = function(e){
    			var E = e || event;
    			console.log(E.target);
    			E.target.onclick = function(){
    				alert(1);
    				document.forms[0].submit();
    			}
    		}
    	}
    </script>
</head>
<body>
<hr/>
<div class='container'>
	<h3>读取文件：</h3>
	<div class='input-group col-lg-6'>
		<select class='form-control' name='path'>
			<option class='list-group-item'>C:/</option>
			<option class='list-group-item'>D:/</option>
			<option class='list-group-item'>E:/</option>
		</select>
		<span class='input-group-btn'>
			<button class='btn btn-success'>读取</button>
		</span>
	</div>
	<hr/>
	<form class='navbar navbar-default'>
		<ul class='nav navbar-nav'>
			<li>
				<a href='javascript: void(0)' data-toggle='dropdown'>选择&nbsp;&nbsp;<span class='caret' style='font-size: 18px'></span></a>
				<ul class='dropdown-menu'>
					<li><a onclick='document.getElementById("in").value= "A:/"'>A:/</a></li>
					<li><a onclick='document.getElementById("in").value="B:/"'>B:/</a></li>
					<li><a onclick='document.getElementById("in").value="C:/"'>C:/</a></li>
					<li class='divider'></li>
					<li><a onclick='document.getElementById("in").value="E:/"'>E:/</a></li>
					<li><a onclick='document.getElementById("in").value="G:/"'>G:/</a></li>
				</ul>
			</li>
			<li><a><input type='text' id='in' name='path' style='width: 53px;background: none;border: none'/></a></li>
		</ul>
		<div class='navbar-form'>
			<div class='input-group'>
				<input type='text' class='form-control' name='name' style='width: 300px'/>
				<span class='input-group-btn'>
					<button class='btn btn-success'>读取</button>
				</span>
			</div>
		<!--  
			<input type='text' class='form-control' name='name' style='width: 300px'/>
			<button class='btn btn-success'>读取</button>
		-->
		</div>
	</form>
	<%	request.setCharacterEncoding("utf-8"); %>
	<jsp:setProperty property="*" name="read"/>
	<jsp:getProperty property="files" name="read"/>
	<jsp:getProperty property="content" name="read" />
</div>
<hr/>
</body>
</html>