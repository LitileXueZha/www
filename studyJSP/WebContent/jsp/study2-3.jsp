<%@ page contentType="text/html;Charset=GB2312" pageEncoding="GB2312" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GB2312"/>
    <link rel="SHORTCUT ICON" href="image/china.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Font-Awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style></style>
<title>声明方法</title>
</head>
<body>
<div class='container'>
		<%!	int add(int x, int y){
					return x + y;
				} 
				int sub(int x, int y){
					return x - y;
				}
		%><!--   这里是定义成员变量和方法   -->
		<div class='alert alert-danger'>
		<%	out.print("调用add方法计算200与123之和：");
				int a = add(200, 123);
				out.println(a);
		%>	
		</div>
		<div class='alert alert-danger'>
		<%	out.println("调用sub方法计算200与123之差："); 
				int b = sub(200, 123);
				out.println(b);
		%>
		</div>
		<hr/>
		<h2 align='center'>计算1~100的连续和</h2>
		<%!	int coutinueSum(int n){
				int sum = 0;
				for(int i=0;i<n;i++){
					sum += i + 1;
				}
				return sum;
		}
		%>
		<label>
				as here you can see：
				<%	long sum;
						sum = coutinueSum(100);
						out.println(sum);
				%>
		</label>
		<%!	int count = 0;
				synchronized void setCount(){
						count ++;
				}
		%>
		<br/>
		<input type="text" value='你是第<%	setCount();
																				out.println(count);
																	  %>个访问的逗比！' disabled style='width: 300px;border: none' />
		<hr/>
		<h2 align='center'>Jsp中的Java表达式</h2>
		<ul class='list-group'>
				<li class='list-group-item'>Sin0.9除以3等于==><b><%= Math.sin(0.9)/3 %></b></li>
				<li class='list-group-item'>17的平方等于==><b><%= Math.pow(17, 2) %></b></li>
				<li class='list-group-item'>123456789除以123等于==><b><%= 123456789/123 %></b></li>
				<li class='list-group-item'>2的平方根等于==><b><%= Math.sqrt(2) %></b></li>
				<li class='list-group-item'>99大于100？ ==> <b><%= 99>100 %></b></li>
		</ul>
		<h2 align="center">Jsp注释</h2>
		<p>首先我得讲一下html里的注释你懂的，firebug是能看到的，而Jsp注释，看不到</p>
		<pre> &lt;%--  Jsp注释  --%&gt; <font color='blue'>&lt;!--  firebug看不到Jsp注释  --&gt;</font></pre>
</div>
</body>
</html>