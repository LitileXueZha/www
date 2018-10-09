<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>out、application对象</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	form{
    		margin-left: 100px;
    		width: 600px;
    	}
    	textarea{
    		resize: none;
    	}
    </style>
    <script type="text/javascript"></script>
</head>
<body>
<div class='container'>
<hr/>
	<h1>out对象</h1>
	<aside>我们用的最多的就是<code>out.print()</code>了</aside><br/>
	<h1>application对象，<small>好像可以做留言板</small></h1>
	<bdo>——session是不同用户放在服务器上的，而application则是共享的</bdo>
	<hr/>
	<div class='container'>
		<form class='form-horizontal' method='post'>
			<div class='form-group'>
				<label class='control-label col-lg-4'>你的名字：</label>
				<div class='col-lg-8'>
					<input type='text' class='form-control' name='name' />
				</div>
			</div>
			<div class='form-group'>
				<label class='control-label col-lg-4'>这是留言标题：</label>
				<div class='col-lg-8'>
					<input type='text' class='form-control' name='title' />
				</div>
			</div>
			<div class='form-group'>
				<label class='col-lg-4' style='text-align: right'>你想说点啥：</label>
				<div class='col-lg-8 ' style='padding-top: 5px'>
					<textarea class='form-control' name='content' rows='5'></textarea>
				</div>
			</div>
			<p style='text-align: right'>
				<button class='btn btn-default btn-sm'>重置</button>
				<button class='btn btn-primary btn-sm'>留言</button>
			</p>
		</form>
		<%!	Vector v = new Vector();
			ServletContext application;
			synchronized void sendMessage(String s){
				application = getServletContext();
				v.add(s);
				application.setAttribute("Mess", v);
			}
		%>
		<%	request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			if(name == null || name == ""){
				name = "匿名者" + (int)(Math.random()*10000);
			}
			if(title == null || title == ""){
				title = "无标题";
			}
			if(content == null || content == ""){
				out.print("<div class='alert alert-danger'>提交失败！<strong>无内容</strong></div>");
			}else{
				String time = new Date().toString();
				String s = "#" +name+ "#" +time+ "#" +title+ "#" + content;
				sendMessage(s);
				out.print("<div class='alert alert-success'>提交成功！</div>");
			}
		%>
		<jsp:include page="study4-6_show.jsp"></jsp:include>
	</div>
	<a href='study4-6_show.jsp' class='hide'>查看</a>
</div>
<hr/>
</body>
</html>