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
    <style>
    		label{
    				text-align: right;
    				cursor: pointer;
    		}
    </style>
<title>选择你的信息</title>
</head>
<body>
<div class='container'>
		<fieldset style='width: 600px;margin: 0 auto;'>
				<legend>选择你的信息</legend>
				<form action='study2-4_get.jsp' method='get'>
						<div class='form-horizontal'>
						<div class='form-group'>
				    			<label class='control-label col-lg-3'>姓名：</label>
				    			<div class='col-lg-5'><input type='text' class='form-control' name='name'/></div>
				    	</div>
				    	<div class='form-group'>
				    			<label class='col-lg-3'>性别：</label>
				    			<div class='col-lg-5'>
				    					<label><input type='radio' name='sex' value='男'/>男</label>
				    					<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
				    					<label><input type='radio' name='sex' value='女'/>女</label>
				    			</div>
				    	</div>
				    	<div class='form-group'>
				    			<label class='col-lg-3'>喜欢的歌手：</label>
				    			<div class='col-lg-5'>
				    					<label><input type="checkbox" name='musican' value='许嵩'/>许嵩</label>&nbsp;&nbsp;
				    					<label><input type="checkbox" name='musican' value='by2'/>by2</label>&nbsp;&nbsp;
				    					<label><input type="checkbox" name='musican' value='周杰伦'/>周杰伦</label>&nbsp;&nbsp;
				    					<label><input type="checkbox" name='musican' value='刘亦菲'/>刘亦菲</label>&nbsp;&nbsp;
				    			</div>
				    	</div>
						</div>
						<input type="hidden" name='ID' value='234521'/>
						<p style='text-align: right'>
								<button class='btn btn-danger' type='reset'>重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
								<button class='btn btn-primary' type='submit'>提交</button>
						</p>
				</form>
		</fieldset>
</div>
</body>
</html>