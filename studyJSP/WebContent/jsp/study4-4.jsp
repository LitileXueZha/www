<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>不知道上个文件咋了，我得测试下这一个</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	dd{
    		text-indent: 2em;
    	}
    </style>
    <script type="text/javascript"></script>
</head> 
<body>
	<div class='container'>
		<blockquote>这是一个session的id：</blockquote>
		<label><%	String id = session.getId();
			out.print(id);
		%></label>
		<dl class='list-group'>
			<dt class='list-group-item'><b>注意：</b>session是一个对象，分配了一个id,储存着数据</dt>
			<dd class='list-group-item'><mark>session.getId():</mark> 获取这个session的Id</dd>
			<dd class='list-group-item'><mark>session.setAttribute():</mark> 添加一组数据</dd>
			<dd class='list-group-item'><mark>session.getAttribute():</mark> 获取一组数据</dd>
			<dd class='list-group-item'><mark>session.getAttributeNames():</mark> 遍历session对象中所对应的关键字</dd>
			<dd class='list-group-item'><mark>session.removeAttribute():</mark> 删除一组数据</dd>
		</dl>
		<form class='form-horizontal' action='' method='post'>
			<label class='control-label col-lg-3'>你的名字：</label>
			<div class='col-lg-5'>
				<input type='text' class='form-control' name='name' />
			</div>
			<p style='text-align: center'><button class='btn'>给你咯</button></p>
		</form>
		<%	request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			if(name == null){
				name = "";
			} else{
				session.setAttribute("customerName", name);
			}
		%>
		<%	if(name.length() > 0){
		%>
				<a href='study4-4_food.jsp'>
				<% String perName = (String)session.getAttribute("customerName");
					out.print(perName);
				%>欢迎去食品柜台采购！</a>
		<%			
				}
		%>
	</div>
</body>
</html>