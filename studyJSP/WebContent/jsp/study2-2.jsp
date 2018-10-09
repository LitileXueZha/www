<%@ page contentType="text/html;Charset=GB2312" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style></style>
<title>简单计数器</title>
</head>
<body>
<div class='container'>
		<%!	int i = 0; %>
		<% i ++;  %>
		<input type='text' value='你是第<%= i  %>个访问本站的逗比！' style='border: none;width: 300px' disabled/>
		<br/>
		<table align='center'><tr><td>
				<div class=''>
						<div class='panel panel-primary'>
								<div class='panel-heading'>
										<h4 class='panel-title'>简单计数器</h4>
								</div>
								<div class='panel-body'>
										<p>利用成员变量被所有用户共享这一性质，实现一个简单的计数器</p>
										<pre>		&lt;%! int i = 0;<br/>		%&gt;<br/>		&lt; i ++;<br/>		%&gt;</pre>
								</div>
								<div class='panel-footer'>
										<p style='text-align: right;margin: 0'>——帅气涛</p>
								</div>
						</div>
				</div>
		</td></tr></table>
</div>
</body>
</html>