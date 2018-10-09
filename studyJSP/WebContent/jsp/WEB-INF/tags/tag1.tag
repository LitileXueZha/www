<%@ tag language="java" pageEncoding="UTF-8"%>
<html>
		<body>
				<fieldset>
						<legend>第一个Tag文件</legend>
						<%	int sum = 0;
								for(int i=1;i<=100;i++){
										sum += i;
								}
								out.print(sum);
						%>
				</fieldset>
		</body>
</html>