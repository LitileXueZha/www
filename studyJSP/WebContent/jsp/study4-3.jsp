<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>枚举对象，oh my god</title>
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
    		padding: 100px;
    	}
    </style>
    <script type="text/javascript"></script>
</head>
<body>
<div class='container'>
	<form>
		<div class='input-group'>
			<input type='text' class='form-control' name='my' />
			<span class='input-group-btn'>
				<button class='btn btn-warning'>提交</button>
			</span>
		</div>
	</form>
	<table class='table'>
		<%	String pr = request.getProtocol();
			String pa = request.getServletPath();
			String m = request.getMethod();
			String h = request.getHeader("accept");
		%>
		<thead>
		<tr>
			<th>方法</th><th>说明</th><th>详细信息</th>
		</tr>
		</thead>
		<tr>
			<td>.getProtocol()</td><td>客户协议</td><td><%= pr %></td>
		</tr>
		<tr>
			<td>.getServletPath()</td><td>当前页面位置</td><td><%= pa %></td>
		</tr>
		<tr>
			<td>.getMethod()</td><td>提交方式</td><td><%= m %></td>
		</tr>
		<tr>
			<td>.getHeader("accept")</td><td>MIME类型</td><td><%= h %></td>
		</tr>
	</table>
	<ul class='list-group'>
		<li class='list-group-item'>
			<label>客户端提交所有参数名字：</label>
			<%	Enumeration en = request.getParameterNames();
				while(en.hasMoreElements()){
					String s = (String)en.nextElement();
					out.print(s);
				}
			%>
		</li>
		<li class='list-group-item'>
			<label>头名字的一个枚举：</label>
			<%	Enumeration eh = request.getHeaderNames();
				while(eh.hasMoreElements()){
					String s = (String)eh.nextElement();
					out.print(s + "、");
				}
			%>
		</li>
		<li class='list-group-item'>
			<label>指定头的全部值得一个枚举(cookie)：</label>
			<%	Enumeration eht = request.getHeaders("cookie");
				while(eht.hasMoreElements()){
					String s = (String)eht.nextElement();
					out.print(s + "、");
				}
			%>
		</li>
		<li class='list-group-item'>
			<label>提交的东东：</label>
			<%	String text = request.getParameter("my");
				int len = text.length();    //  这是个问题，text可能为空，需处理；并且这里中文注释会出错！
			%>
			<mark><%= text %></mark><small>长度：</small><%= len %>
		</li>
	</ul>
</div>
</body>
</html>