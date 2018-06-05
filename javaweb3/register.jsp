<%@page import="java.sql.*" %>>
<%@ page language="java" import="java.util.*"pageEncoding="utf-8"%>  

<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
<head>  
 <style>
 #box{
      margin:0px auto;
      width:500px;
      height:200px;
      
 }
 </style>
<script language="javascript">  
function checkValidate()  
{  
    
  if(document.form1.textfield1.value==""||document.form1.textfield1.value==null)  
  {  
  window.alert("用户名不能为空！！！");  
  return false;  
  }  
  if(document.form1.textfield2.value==""||document.form1.textfield2.value==null)  
  {  
  window.alert("手机号不能为空！！！");  
  return false;  
  }  
  if(document.form1.textfield3.value==""||document.form1.textfield3.value==null)  
  {  
  window.alert("密码不能为空！！！");  
  return false;  
  }   
  if(document.form1.textfield4.value==""||document.form1.textfield4.value==null)  
  {  
  window.alert("确认密码不能为空！！！");  
  return false;  
  }
  if(document.form1.textfield5.value==""||document.form1.textfield5.value==null)  
  {  
  window.alert("出生日期不能为空！！！");  
  return false;  
  }
  if(document.form1.textfield6.value==""||document.form1.textfield6.value==null)  
  {  
  window.alert("Email地址不能为空！！！");  
  return false;  
  }
}  
</script>  
<base href=" <%=basePath%>">  
  <title>register.jsp页面 </title>  
  
</head>  
   
<body bgcolor=cyan> 
<center> 
<div id="box">
<form id="form1" name="form1" method="post" action="dealwith.jsp"  align="center" >  
  <p> <strong> 用&nbsp;户&nbsp;名：&nbsp;&nbsp;&nbsp;&nbsp;
  <input name="textfield1" type="username" />  
  </strong> </p>  
  
  <p> <strong>手&nbsp;机&nbsp;号：&nbsp;&nbsp;&nbsp;&nbsp;</strong>  
  <input type="text" name="textfield2" />  
  </p>  
  <p> <strong> 密&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp;&nbsp;&nbsp; </strong>  
  <input type="password" name="textfield3" />  
  </p>  
  <p> <strong>确认密码：</strong>  
  <input type="password" name="textfield4" />  
  </p> 
    <p> <strong>性&nbsp;&nbsp;别：&nbsp;&nbsp; </strong>  
  <input name="sex" type="radio" value="男" checked="checked" />男 
   <input name="sex" type="radio" value="女" checked="checked" />女
  </p>
   <p> <strong>出&nbsp;生&nbsp;日&nbsp;期： </strong>  
  <input type=text" name="textfield5" />  
  </p> 
     <p> <strong>Email地&nbsp;&nbsp;址:&nbsp;&nbsp;&nbsp;&nbsp;</strong>  
  <input type="text" name="textfield6" />  
  </p>
  <p>  
  <input type="submit" name="Submit" value="注册" onclick="return checkValidate();"/>  
  <input type="reset" name="Reset" value="重置" />  
  </p>  
</form>  

<p>
    <input type="button" name="return" value="返回登录页面" onclick="javascript:window.location.href ='login.jsp';">
</p> 
</div>  
</center>
</body> 
<body>  
    <%        
            String user = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");    
            String pwd = request.getParameter("password");  
  
            String driverClass="com.mysql.jdbc.Driver";  
            String url = "jdbc:mysql://localhost:3306/lsn";  
            String username = "root";  
           String password = "123456";  
            Class.forName(driverClass); 
            Connection conn = DriverManager.getConnection(url,username,password); 
           PreparedStatement pStmt = conn.prepareStatement("select * from hd where username = '" + user + "'");  
             ResultSet rs = pStmt.executeQuery();  
               if(rs.next()){  
                   out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='register.jsp';</script>");  
               }else{  
                   PreparedStatement tmt = conn.prepareStatement("Insert into hd values('" + user + "','" + pwd+ "')");  
                       int rst = tmt.executeUpdate();  
                        if (rst != 0){  
                             out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='index.jsp';</script>");    
                       }else{  
                          out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='register.jsp';</script>");    
                       }  
                }  
    %>  
  </body>  
</html>