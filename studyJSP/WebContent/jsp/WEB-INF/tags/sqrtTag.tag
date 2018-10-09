<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="my" %>
<% 
try{
	double a = Double.parseDouble(my);
	if(a >= 0){
		double aq = Math.sqrt(a);
		out.print("<div class='alert alert-success'>" + my + " 的平方根为：<kbd>" + aq + "</kbd></div>");
	} else{
		out.print("<div class='alert alert-warning'>输入一个<b>正数</b>！</div>");
	}
} catch(NumberFormatException e){
	out.print("<div class='alert alert-danger'>输入一个<b>数字</b>！</div>");
}
%>