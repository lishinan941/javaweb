package chen;  
import com.mysql.jdbc.Driver;  
import java.sql.*;  
public class UserRegister  
{  
        private UserBean userBean;  
        private Connection con;  
        //获得数据库连接。  
        public UserRegister()  
        {  
  
             String url="jdbc:mysql://localhost/"+"chao"+"?user="+"root"+"&password="+"850629";  
  
            try  
            {  
  
                Class.forName("com.mysql.jdbc.Driver").newInstance();  
                        con = DriverManager.getConnection(url);  
                }  
                catch(Exception e)  
                {  
                        e.printStackTrace();  
                }  
  
        }  
        //设置待注册的用户信息。  
        public void setUserBean(UserBean userBean)  
        {  
                this.userBean=userBean;  
        }  
        //进行注册  
        public void regist() throws Exception  
        {  
                String reg="insert into userinfo(userid,password)  values(?,?)";  
  
                try  
                {  
                        PreparedStatement pstmt=con.prepareStatement(reg);  
                        pstmt.setString(1,userBean.getUserId());  
                        pstmt.setString(2,userBean.getPassword());  
                        pstmt.executeUpdate();  
                }  
                catch(Exception e)  
                {  
                        e.printStackTrace();  
                        throw e;  
                }  
  
  
        }  
}  