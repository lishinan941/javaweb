<%@ page language="java" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>登录页面</title>

</head>
<body>
<center>
 <form name="form1" action="logindealwith.jsp" method="post">
                <table border="0">
                    <tr>
                        <td>账号：</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="password">
                        </td>
                    </tr>
                </table>
            
                <input type="submit" value="登录" style="color:#BC8F8F">
            </form>
 <form action="register.jsp"><input type="submit" value="注册" style="color:#BC8F8F"></form>

 </center>
</body>
</html>