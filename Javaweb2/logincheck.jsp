<%@ page language="java" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
   
<%  
  String userid1=new String(request.getParameter("userid"));  
  String password1=new String(request.getParameter("password"));  
  
 Class.forName("com.mysql.jdbc.Driver");  
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chao","root","850629");  
 Statement stmt=con.createStatement();  
 String sql="select * from  userinfo where userid='"+userid1+"';";  
 ResultSet rs=stmt.executeQuery(sql);  
  if(rs.next())  
  {String password=new String(rs.getString("password"));  
  if(password.equals(password1))  
  {session.setAttribute("userid1",userid1);  
  response.sendRedirect("sucess.jsp");  
  }  
  else  
{response.sendRedirect("login.jsp");  
}  
}  
else  
{response.sendRedirect("login.jsp");  
}  
%>  