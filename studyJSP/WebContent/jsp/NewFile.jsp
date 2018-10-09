<%@ page contentType="text/html;Charset=utf-8" pageEncoding="utf-8" %>
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
<title>我的第一个jsp页面</title>
</head>
<body>
<div class="input-group">
	<span class="glyphicon glyphicon-home input-group-addon"></span>
	<input type="text" class="form-control" value="这里我真的是醉了，费了九牛二虎之力才搞好编码，记住这个pageEncoding和charset一样啊啊啊啊啊" readonly/>
</div>
<div class="container">
	<font size=4>
		<p>
			jsp页面测试
			<% int x = 100,
						  y = 500,
						  z;
					z = x + y;
			%>
		</p>
		<p>
			<var>x + y</var>的和为：<%= z  %>
		</p>
		<p>
			1到100的连续和
			<% 
				int sum = 0;
				for(int i=1;i<=100;i++){
					sum += i;
				}
				out.println("<br/>和为："+sum);
			%>
		</p>
	</font>
</div>
</body>
</html>