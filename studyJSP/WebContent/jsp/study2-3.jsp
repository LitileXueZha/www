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
<title>��������</title>
</head>
<body>
<div class='container'>
		<%!	int add(int x, int y){
					return x + y;
				} 
				int sub(int x, int y){
					return x - y;
				}
		%><!--   �����Ƕ����Ա�����ͷ���   -->
		<div class='alert alert-danger'>
		<%	out.print("����add��������200��123֮�ͣ�");
				int a = add(200, 123);
				out.println(a);
		%>	
		</div>
		<div class='alert alert-danger'>
		<%	out.println("����sub��������200��123֮�"); 
				int b = sub(200, 123);
				out.println(b);
		%>
		</div>
		<hr/>
		<h2 align='center'>����1~100��������</h2>
		<%!	int coutinueSum(int n){
				int sum = 0;
				for(int i=0;i<n;i++){
					sum += i + 1;
				}
				return sum;
		}
		%>
		<label>
				as here you can see��
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
		<input type="text" value='���ǵ�<%	setCount();
																				out.println(count);
																	  %>�����ʵĶ��ȣ�' disabled style='width: 300px;border: none' />
		<hr/>
		<h2 align='center'>Jsp�е�Java���ʽ</h2>
		<ul class='list-group'>
				<li class='list-group-item'>Sin0.9����3����==><b><%= Math.sin(0.9)/3 %></b></li>
				<li class='list-group-item'>17��ƽ������==><b><%= Math.pow(17, 2) %></b></li>
				<li class='list-group-item'>123456789����123����==><b><%= 123456789/123 %></b></li>
				<li class='list-group-item'>2��ƽ��������==><b><%= Math.sqrt(2) %></b></li>
				<li class='list-group-item'>99����100�� ==> <b><%= 99>100 %></b></li>
		</ul>
		<h2 align="center">Jspע��</h2>
		<p>�����ҵý�һ��html���ע���㶮�ģ�firebug���ܿ����ģ���Jspע�ͣ�������</p>
		<pre> &lt;%--  Jspע��  --%&gt; <font color='blue'>&lt;!--  firebug������Jspע��  --&gt;</font></pre>
</div>
</body>
</html>