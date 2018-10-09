<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.*" %>
<jsp:useBean id="guessNumber" class="tao.guessNumber" scope="session" />
<jsp:useBean id="time" class="tao.showTime" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>猜数字bean</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	span.badge{
    		font-size: 30px;
    	}
    </style>
    <script type="text/javascript"></script>
</head>
<body>
<hr/>
<div class='container'>
	<p>猜数字(1~100)：</p>
	<form class='input-group col-lg-6'>
		<input type="text" class='form-control' name='number' />
		<span class='input-group-btn'>
			<button class='btn btn-default'>我猜猜</button>
		</span>
	</form><br/>
	<jsp:setProperty property="number" param="number" name="guessNumber"/>
	<%	
		double r = guessNumber.getResult(); 
		int c = guessNumber.getCount();
		String date = time.getYear() + "年" + time.getMonth() + "月" + time.getDate() + "日";
		String t = time.getTime();
		if(r > 0){
	%>
	<div class='alert alert-danger'>
		<span class='badge pull-right'><jsp:getProperty property="number" name="guessNumber"/></span>
		猜大了啊！第<%=c %>次了。&nbsp;&nbsp;星期
		<jsp:getProperty property="year" name="time"/>
	</div>
	<%
		} else if(r < 0){
	%>
	<div class='alert alert-danger'>
		<span class='badge pull-right'><jsp:getProperty property="number" name="guessNumber"/></span>
		猜小了嘞！第<%=c %>次了。
	</div>
	<%
		} else{
	%>
	<div class='alert alert-success'>
		<span class='badge pull-right'><jsp:getProperty property="number" name="guessNumber"/></span>
		猜对了！第<%=c %>次。
	</div>
	<%
		}
	%>
</div>
<hr/>
</body>
</html>