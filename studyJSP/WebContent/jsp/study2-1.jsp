<%@ page contentType="text/html;Charset=GB2312" pageEncoding="utf-8" %>

<%@ page import="java.util.Date"  %>
<%! Date date;
		int sum;
		public int add(int m,int n){
			return m + n;
		}
%>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
    	dt{
    		text-align: center;
    		font-weight: bold;
    		font-size: 18px;
    	}
    </style>
<title>基本jsp页面组成</title>
</head>
<body>
<div class="container">
	<dl class='list-group'>
		<dt class='list-group-item'>一个jsp页面可由五种元素组成</dt>
		<dd class='list-group-item'>普通的HTML标签</dd>
		<dd class='list-group-item'>JSP标记，如指令、动作标记</dd>
		<dd class='list-group-item'>成员变量和方法</dd>
		<dd class='list-group-item'>Java程序片</dd>
		<dd class='list-group-item'>Java表达式</dd>
	</dl>
	<p>
		程序片创建Date对象<br/>
		<%  date = new Date();
				out.print(date);
				sum = add(12,34);
		%>
	</p>
	<p>下一行输出</p>
	<%= sum + 100  %>
	<dl class='list-group'>
			<dt class='list-group-item'>JSP运行原理</dt>
			<dd class='list-group-item'>1. 把jsp页面中普通的HTML标记交给用户浏览器执行显示</dd>
			<dd class='list-group-item'>2. JSP标记、数据和方法声明、Java程序片由Tomcat服务器执行，将<label class='label label-success'>需要显示的</label>结果发送给浏览器</dd>
			<dd class='list-group-item'>3. Java表达式由Tomcat服务器计算，将结果转化为字符串，发送给浏览器显示</dd>
	</dl>
	<div class='alert alert-info'>
			综上所述，JSP的效率就有点高了，不过php更简单，要不是学校的课，我根本不想学
			<button class='close' data-dismiss='alert'>&times;</button>
	</div>
</div>
</body>
</html>