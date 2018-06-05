<%@ page language="java" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>显示注册信息</title>
</head>
<body>
<table width="244" border="0" align="center">
<tr>
   <td width="83" height="30">用户号：</td>
   <td width="151" height="30"><%=request.getAttribute("textfield1")%></td>
</tr>
<tr>
   <td width="83" height="30">手机号：</td>
   <td height="30"><%=request.getAttribute("textfield2") %></td>
</tr>
<tr>
   <td width="83" height="30">密码：</td>
   <td height="30"><%=request.getAttribute("textfield3") %></td>
</tr>
<tr>
   <td width="83" height="30">确认密码：</td>
   <td height="30"><%=request.getAttribute("textfield4") %></td>
</tr>
<tr>
   <td width="83" height="30">性别：</td>
   <td height="30"><%=request.getAttribute("textfield5") %></td>
</tr>
<tr>
   <td width="83" height="30">出生日期：</td>
   <td height="30"><%=request.getAttribute("textfield6") %></td>
</tr>
<tr>
   <td width="83" height="30">Email地址：</td>
   <td height="30"><%=request.getAttribute("textfield6") %></td>
</tr>

</table>
</body>
</html>