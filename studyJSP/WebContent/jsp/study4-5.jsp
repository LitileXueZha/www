<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="com" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>一些关于session的方法</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	p{	text-indent: 2em;	}
    </style>
    <script type="text/javascript">
    	$(document).ready(function(){
    		$('[data-toggle="tooltip"]').tooltip();
    	});
    </script>
</head>
<body>
<div class='container'>
	<h2>session的生存期限</h2>
	<p>默认发呆时间为半个小时，修改的话去安装目录中conf下的web.xml</p>
	<pre>
		&lt;session-config>
			&lt;session-timeout><strong data-toggle='tooltip' data-original-title='修改此处'>30</strong>&lt;/session-timeout>
		&lt;/session-config>	</pre>
	<ul class='list-group'>
		<li class='list-group-item'>
			<label>public long getCreationTime(): </label> 获取当前session对象创建的时间
		</li>
		<li class='list-group-item'>
			<label>public long getLastAccessedTime(): </label> 获取最后一次操作session对象时间
		</li>		
		<li class='list-group-item'>
			<label>public int getMaxInactiveInterval(): </label> 获取session对象<q>发呆</q>时间
		</li>		
		<li class='list-group-item'>
			<label>public void setMaxInactiveInterval(int Interval): </label> 设置session<q>发呆</q>时间
		</li>		
		<li class='list-group-item'>
			<label>public boolean isNew(): </label> 判断当前session是否为一个新的
		</li>		
		<li class='list-group-item'>
			<label>invalidate(): </label> 使session无效
		</li>
	</ul>
	<%	session.setMaxInactiveInterval(20);
		boolean isNew = session.isNew();
		if(isNew){
			out.print("新的会话！<br/>");
		} else{
			out.print("欢迎回来！<br/>");
		}
		out.print("你的session发呆时间为：" + session.getMaxInactiveInterval() + "s<br/>");
		out.print("session的创建时间为：" + new Date(session.getCreationTime()) + "<br/>");
		out.print("session的Id是：" + session.getId() + "<br/>");
		Long lastTime = (Long)session.getAttribute("lastTime");
		if(lastTime == null){
			long n = session.getLastAccessedTime();
			session.setAttribute("lastTime", new Long(n));
		} else{
			long m = session.getLastAccessedTime();
			long n = ((Long)session.getAttribute("lastTime")).longValue();
			out.print("发呆时间大约" + (m-n) + "毫秒，约" +(m-n)/1000+ "秒<br/>");
			session.setAttribute("lastTime", new Long(m));
		}
	%>
	<p>原理是通过调用两次getLastAccessedTime(),将上一次的保存在session里以形成时间差</p><br/>
	<h2>session对象与url重写<sub>——主要是怕老掉牙的浏览器没开cookie</sub></h2>
	<p>所谓的url重写，也就是把第一个session的Id发送给另一个页面，相当于get方法一样；<strong>encodeRedirectURL()</strong></p>
	<label>jsp：</label><pre> String str = response.encodeRedirectURL("study4-4.jsp");</pre>
	<label>html: </label><pre> &lt;form action="&lt;%= str %&gt;"... </pre>
	<h2>session实现的计数器</h2>
	<div class='alert alert-info'>
		你是第<com:count/>个用户！
		<button class='close' data-dismiss='alert'>&times;</button>
	</div>
	<p>so，现在我们得关闭浏览器再打开才能成为新用户，刷新没有卵用</p>
</div>
<hr/>
</body>
</html>