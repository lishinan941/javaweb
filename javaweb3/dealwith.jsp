<%@ page language="java" pageEncoding="utf-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
 String textfield1=new String(request.getParameter("textfield1").getBytes("ISO8859-1"),"GBK");
 String textfield2=new String(request.getParameter("textfield2").getBytes("ISO8859-1"),"GBK");
 String textfield3=new String(request.getParameter("textfield3").getBytes("ISO8859-1"),"GBK");
 String textfield4=new String(request.getParameter("textfield4").getBytes("ISO8859-1"),"GBK");
 String textfield5=new String(request.getParameter("textfield5").getBytes("ISO8859-1"),"GBK");
 String textfield6=new String(request.getParameter("textfield6").getBytes("ISO8859-1"),"GBK");
 String textfield7=new String(request.getParameter("textfield7").getBytes("ISO8859-1"),"GBK");
 request.setAttribute("textfield1",textfield1);
 request.setAttribute("textfield2",textfield2);
 request.setAttribute("textfield3",textfield3);
 request.setAttribute("textfield4",textfield4);
 request.setAttribute("textfield5",textfield5);
 request.setAttribute("textfield6",textfield6);
 request.setAttribute("textfield7",textfield6);
 
%>
<jsp:forward page="showUserInfo.jsp"/>
</body>
</html>