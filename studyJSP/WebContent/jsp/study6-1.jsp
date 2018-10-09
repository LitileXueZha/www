<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tao.file" %>
<jsp:useBean id="file" class="tao.file" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh">
<head>
	 <title>文件操作</title>
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
<div class="container">
	<p>查看文件情况：</p>
	<form class='form-horizontal' style='width: 600px;position: relative'>
		<div class='form-group'>
			<label class='control-label col-lg-4'>文件目录：</label>
			<div class='col-lg-8'>
				<input type='text' class='form-control' name='path' />
			</div>
		</div>
		<div class='form-group'>
			<label class='control-label col-lg-4'>文件名：</label>
			<div class='col-lg-8'>
				<input type='text' class='form-control' name='name' />
			</div>
		</div>
		<button class='btn btn-success' style='position: absolute;bottom: 0;right: 0;'>查看</button>
	</form>
	<jsp:setProperty property="*" name="file"/>
	<table class='table'>
		<caption>
			<span class='glyphicon glyphicon-folder-close'></span>&nbsp;&nbsp;
			<jsp:getProperty property="path" name="file"/><br/>
			&nbsp;&nbsp;<span class='glyphicon glyphicon-file'></span>&nbsp;&nbsp;
			<jsp:getProperty property="name" name="file"/>
		</caption>
		<thead>
		<tr><th>存在</th><th>长度</th><th>路径</th><th>可读</th><th>可写</th></tr>
		</thead>
		<tr>
			<td>
			<%	if(file.theProperty("exist")){
					%>
					<input type="checkbox" checked disabled/>
					<%
				} else{
					%>
					<input type="checkbox" disabled/>
					<%
				}
			%>
			</td>
			<td>
				<jsp:getProperty property="length" name="file"/>
				(<i><% out.print(file.getLength() / 1024 / 1024); %></i>&nbsp;M)
			</td>
			<td>
				<jsp:getProperty property="abPath" name="file"/>
			</td>
			<td>
			<%	if(file.theProperty("read")){
					%>
					<input type="checkbox" checked disabled/>
					<%
				} else{
					%>
					<input type="checkbox" disabled/>
					<%
				}
			%>
			</td>
			<td>
			<%	if(file.theProperty("write")){
					%>
					<input type="checkbox" checked disabled/>
					<%
				} else{
					%>
					<input type="checkbox" disabled/>
					<%
				}
			%>
			</td>
		</tr>
	</table>
</div>
<hr/>
<div class='container'>
	<h3>对目录的操作:</h3>
	<ul class='list-group'>
		<li class='list-group-item'>
			<code>public boolean mkdir()：</code>file对象的方法，创建一个新目录，失败或已存在返回false
		</li>
		<li class='list-group-item'>
			<code>public boolean delete()：</code>file对象的方法，删除一个目录(<strong>必须为空</strong>)，成功返回true
		</li>
	</ul>
	<label>Example：</label>
	<pre>		File f = new File("原目录", "输入的子目录");
		f.mkdir();                             //  创建
		f.delete();                            //  删除</pre>
</div>
<hr/>
</body>
</html>