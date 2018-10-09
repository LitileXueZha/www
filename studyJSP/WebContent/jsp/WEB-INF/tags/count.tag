<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ tag import="java.io.*" %>
<%!	int number = 0;
	File f = new File("count.txt");
	synchronized void countPeople(){
		if(!f.exists()){
			number ++;
			try{
				f.createNewFile();
				FileOutputStream out = new FileOutputStream("count.txt");
				DataOutputStream daot = new DataOutputStream(out);
				daot.writeInt(number);
				out.close();
				daot.close();
			}catch(IOException e){}
		} else{
			try{
				FileInputStream in = new FileInputStream("count.txt");
				DataInputStream dait = new DataInputStream(in);
				number = dait.readInt();
				number ++;
				in.close();
				dait.close();
				FileOutputStream out = new FileOutputStream("count.txt");
				DataOutputStream daot = new DataOutputStream(out);
				daot.writeInt(number);
				out.close();
				daot.close();
			} catch(IOException e){}
		}
	}
%>
<%	String str = (String)session.getAttribute("count");
	if(str == null){
		countPeople();
		String personCount = String.valueOf(number);
		session.setAttribute("count", personCount);
	}
	out.print((String)session.getAttribute("count"));
%>