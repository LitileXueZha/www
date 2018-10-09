<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.upload" %>
<jsp:useBean id="up" class="tao.upload" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>文件上传</title>
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
<hr/>
<fieldset class='container'>
	<legend>文件上传，RandomAccessFile类：</legend>
	<form method='post' enctype='multipart/form-data'>
		<input type="file" name='file' />
		<input type='submit' value='上传' />
	</form>
	<%	up.setRequest(request);
		up.setSession(session);
	%>
	<jsp:getProperty property="msg" name="up"/>
	<img src='<%= (String)session.getAttribute("name") %>' style='max-width: 500px'/>
</fieldset>
<hr/>
</body>
</html>