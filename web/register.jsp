<%@ page language="java" pageEncoding="utf-8"%>  
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
      background:yellow; 
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
<div id="box">   
<body bgcolor=cyan> 
<center> 
<form id="form1" name="form1" method="post" action="dealwith.jsp"  align="center" >  
  <p> <strong> 用户名：&nbsp;&nbsp;&nbsp;&nbsp;
  <input name="textfield1" type="text" />  
  </strong> </p>  
  
  <p> <strong>手机号：&nbsp;&nbsp;&nbsp;&nbsp;</strong>  
  <input type="text" name="textfield2" />  
  </p>  
  <p> <strong> 密&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp;&nbsp;&nbsp; </strong>  
  <input type="password" name="textfield3" />  
  </p>  
  <p> <strong>确认密码：</strong>  
  <input type="password" name="textfield4" />  
  </p> 
    <p> <strong>性&nbsp;&nbsp;&nbsp;&nbsp;别：&nbsp;&nbsp;&nbsp; </strong>  
  <input name="sex" type="radio" value="男" checked="checked" />男 
   <input name="sex" type="radio" value="女" checked="checked" />女
  </p>
   <p> <strong>出生日期： </strong>  
  <input type=text" name="textfield5" />  
  </p> 
     <p> <strong>Email地&nbsp;&nbsp;址:</strong>  
  <input type="text" name="textfield6" />  
  </p>
  <p>  
  <input type="submit" name="Submit" value="注册" onclick="return checkValidate();"/>  
  <input type="reset" name="Reset" value="重置" />  
  </p>  
</form>  
</center>
</body> 
</div>  
</html>