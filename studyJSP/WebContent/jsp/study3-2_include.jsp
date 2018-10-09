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
<title>动作标记include</title>
</head>
<body>
<div class='container'>
		<fieldset>
				<legend>加载一个Jsp文件，该文件负责计算累加之和</legend>
				<p>1~100连续和：</p>
				<label>
						<jsp:include page="study3-2_param.jsp">
								<jsp:param value="100" name="item"/>
						</jsp:include>
				</label>
				<blockquote>request.getParameter()</blockquote>
				<ul class='list-group'>
						<li class='list-group-item'>1. 获取get请求参数</li>
						<li class='list-group-item'>2. 通过param动作标记的参数获取。<code>&lt;jsp:param name='' value=''/&gt;</code></li>
				</ul>
		</fieldset>
</div>
</body>
</html>