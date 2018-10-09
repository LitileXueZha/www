<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<%	String perName = (String)session.getAttribute("customerName"); %>
	 <title><%= perName %>的购物车</title>
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
	<table class='table'>
		<thead>
		<tr>
			<th colspan='2' style='text-align: center'>这里是结账处，以下是你的购买信息！</th>
		</tr>
		</thead>
		<tr>
			<td>姓名</td><td>商品</td>
		</tr>
		<tr>
			<td><%= perName %></td>
			<td><% Enumeration foods = session.getAttributeNames();
				while(foods.hasMoreElements()){
					String key = (String)foods.nextElement();
					String food = (String)session.getAttribute(key);
					if(!(food.equals(perName))){
						out.print(food + "、");
					}
				}
			%></td>
		</tr>
		<tr><td colspan='2' style='text-align: right'>
			<a href='study4-4.jsp'>修改姓名</a>
			<a href='study4-4_food.jsp'>购买食品</a>
		</td></tr>
	</table>
</div>
</body>
</html>