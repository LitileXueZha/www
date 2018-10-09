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
<title>结果信息展示</title>
</head>
<body>
<%	String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String ID = request.getParameter("ID");
		String musican[] = request.getParameterValues("musican");
%>
<div class='container'>
		<table class='table table-hover'>
				<caption>结果信息展示</caption>
				<thead>
				<tr>
						<th>ID<th>姓名</th><th>性别</th><th>喜欢的歌手</th>
				</tr>
				</thead>
				<tr>
						<td><%	out.println(ID); %></td>
						<td><%	out.println(name); %></td>
						<td><%	out.println(sex); %></td>
						<td><%	if(musican == null){
								out.println("居然没有喜欢的歌手！");
						} else{
								for(int i=0;i<musican.length;i++){
										out.println(musican[i]);
										if(i == musican.length-1){
												break;
										} else{
												out.println("、");
										}
								}
						} %></td>
				</tr>
		</table>
</div>
</body>
</html>