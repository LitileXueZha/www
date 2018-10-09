<%@ page language="java" contentType="text/html;Charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="zh">
<body>
<%	Vector v = (Vector)application.getAttribute("Mess");
	for(int i=0;i<v.size();i++){
		String message = (String)v.elementAt(i);
		StringTokenizer fenxi = new StringTokenizer(message, "#");
		int n = fenxi.countTokens();
		out.print("<div style='height: 200px;margin-bottom: 5px;border-bottom: 1px solid silver;'>");
		out.print("<p style='height: 40px'>");
		out.print("<span class='glyphicon glyphicon-user' style='font-size: 40px;float: left;margin: 0 40px 0 20px;'></span>");
		for(int k=0;k<n;k++){
			String str = fenxi.nextToken();
			if(k < n-3){
				out.print("<span style='font-size: 17px'>" +str+ "</span><br/>");
			}
			else if(k < n-2){
				out.print("<i style='font-size: 13px;float: left;'>— " +str+ "</i>");
			}
			else if(k < n-1){
				out.print("<h3 style='margin: 35px 0 0 0;'>" +str+ "</h3>");
			} else{
				out.print("<p style='margin: 0 100px'>" +str+ "</p>");
			}
		}
		out.print("</div>");
	}
%>
</body>
</html>