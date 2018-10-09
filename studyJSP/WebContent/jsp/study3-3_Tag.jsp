<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="com" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	    <title>tag文件</title>
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
<div class='container'>
	<ul class='list-group'>
		<li class='list-group-item'>
			<q>调用tag1文件：</q>
			<com:tag1 />
		</li>
		<li class='list-group-item'>
			<bdo>调用tag2文件：</bdo>
			<com:tag2></com:tag2>
		</li>
	</ul>
	<h3>看我的jsp向tag传数据</h3>
	<dl>
		<dt>jsp两种方法</dt>
		<dd>1. 放在调用tag文件中间<code>&lt;prefix:tagName><b>&nbsp;这里, 也称之为标记体</b>&lt;/prefix:tagName></code></dd>
		<dd>2. 在tag单标记传递键对值&lt;prefix:tagName name="value" /></dd>
	</dl>
	<dl>
		<dt>tag调用</dt>
		<dd>1. &lt;jsp:doBody />  ==  标记体</dd>
		<dd>2. &lt;%@ attribute name="name" required="true" %>，jsp里的name可以当做一个变量来使用，值就是value</dd>
	</dl>
	<ul class='list-group'>
		<li class='list-group-item'>
			<com:attrTag>头上一片青天，心中一个思念</com:attrTag>
		</li>
		<li class='list-group-item'>
			我用键对值传数据
			<com:jsonTag side1="3" side2="4" side3="5" />
		</li>
	</ul>
</div>
</body>
</html>