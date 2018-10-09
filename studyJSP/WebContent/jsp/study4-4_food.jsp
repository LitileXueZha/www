<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>食品柜台</title>
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
<%	String name = (String)session.getAttribute("customerName"); %>
<div class='container'>
	<p style='text-align: center;'>
		欢迎你，<mark><%	out.print(name); %></mark>
		<a href='study4-4.jsp' style='margin-left: 100px;'>修改姓名</a>
	</p>
	<form>
		这是食品柜台，你想要啥？<br/>
		<label><input type='checkbox' name='choice' value='香肠'/>香肠</label>&nbsp;&nbsp;
		<label><input type='checkbox' name='choice' value='土豆'/>土豆</label>&nbsp;&nbsp;
		<label><input type='checkbox' name='choice' value='白菜'/>白菜</label>&nbsp;&nbsp;
		<label><input type='checkbox' name='choice' value='萝卜'/>萝卜</label><br/>
		<button class='btn btn-success btn-sm'>购买</button>
	</form>
<%	String choices[] = request.getParameterValues("choice");
	if(choices != null){
		for(int i=0;i<choices.length;i++){
			session.setAttribute(choices[i], choices[i]);
		}
%>
<p><a href='study4-4_cart.jsp'>购物车</a></p>
<%
	}
%>
</div>
</body>
</html>