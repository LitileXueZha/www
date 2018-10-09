<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.readRows" %>
<<jsp:useBean id="rr" class="tao.readRows" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>按行读取文件</title>
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
<div class='container'>
	<label>按行读取文件：</label>
	<form class='form-horizontal' style='width: 70%;'>
		<div class='form-group'>
			<label class='control-label col-lg-6'>文件列表：</label>
			<div class='col-lg-6'>
				<select name='name' class='form-control'>
					<option class='form-control' value='NewFile.jsp'>NewFile.jsp</option>
					<option class='form-control' value='study2-1.jsp'>study2-1.jsp</option>
					<option class='form-control' value='study4-4_cart.jsp'>study4-4_cart.jsp</option>
				</select>
			</div>
		</div>
		<div class='form-group'>
			<label class='control-label col-lg-6'>你希望每次读几行呢：</label>
			<div class='col-lg-6'>
				<input type='text' class='form-control' name='rows'/>
			</div>
		</div>
		<button class='btn btn-success' style='float: right'>&nbsp;读取&nbsp;</button>
	</form>
	<jsp:setProperty property="*" name="rr"/>
	<br/>
	<fieldset>
		<legend>内容：</legend>
		<textarea class='form-control' rows='<jsp:getProperty property="rows" name="rr"/>'>
			<jsp:getProperty property="content" name="rr"/>
		</textarea>
	</fieldset>
</div>
<hr/>
</body>
</html>