<%@ tag language="java" pageEncoding="UTF-8"%>
<p>第二个tag文件</p>
<%	int i, j;
	out.print("素数：");
	for(i=1;i<=50;i++){
		for(j=2;j<i;j++){
			if(i%j == 0){
				break;
			}
		}
		if(j == i){
			out.println(" " + i);
		}
	}
%>