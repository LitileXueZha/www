<%@ tag language="java" pageEncoding="UTF-8"%>
<%--	调用属性  --%>
<%@ attribute name="side1" required="true" %>
<%@ attribute name="side2" required="true" %>
<%@ attribute name="side3" required="true" %>
<%--  方法书写标记<%! %>   --%>
<%!
	public String doArea(double a, double b, double c){
		if(a+b > c && a+c > b && b+c > a){
			double p = (a+b+c)/2;
			double s = Math.sqrt(p*(p-a)*(p-b)*(p-c));
			return "三角形面积为：" + s;
		} else{
			return a + "、"  + b + "、" + c + "不能构成一个三角形！";
		}
	}
%>
<%	double a = Double.parseDouble(side1);
	double b = Double.parseDouble(side2);
	double c = Double.parseDouble(side3);
%>
<i><% out.print(doArea(a, b, c)); %></i>
<br/>
<label>我们在tag这边取得的三条边为：</label>
<span class='badge'><%= a %></span>
<span class='badge'><%= b %></span>
<span class='badge'><%= c %></span>