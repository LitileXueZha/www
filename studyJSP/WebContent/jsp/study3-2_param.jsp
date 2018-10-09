<%@ page contentType="text/html;Charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh">
<body>
<%	String str = request.getParameter("item");
		int n = Integer.parseInt(str);
		int sum = 0;
		for(int i=1;i<=n;i++){
				sum += i;
		}
		out.print(sum);
%>
</body>
</html>