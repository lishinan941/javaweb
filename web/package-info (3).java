/**
 * 
 */
/**
 * @author Administrator
 *
 */
package com.bie.utils;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;


/** 
* @author BieHongLi 
* @version ����ʱ�䣺2017��2��21�� ����10:01:14 
* ���ݽ�����dao��
*/
public class BaseDao {

    private static String driver;//���ݿ�����
    private static String url;//���ݿ�·�����ҵ���Ӧ�����ݿ�
    private static String user;//���ݿ��˺�
    private static String password;//���ݿ�����
    
    static{
        driver=ResourceBundle.getBundle("db").getString("driver");
        url=ResourceBundle.getBundle("db").getString("url");
        user=ResourceBundle.getBundle("db").getString("user");
        password=ResourceBundle.getBundle("db").getString("password");
    }
    /*private static String driver="com.mysql.jdbc.Driver";
    private static String url="jdbc:mysql:///test";
    private static String user="root";
    private static String password="123456";*/
    
    /***
     * �������ݿ�ķ���
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static Connection getCon() throws ClassNotFoundException, SQLException{
        Class.forName(driver);//�������ݿ�����
        System.out.println("���Լ������ݿ�ɹ�");
        Connection con=DriverManager.getConnection(url, user, password);
        System.out.println("�������ݿ����ӳɹ�");
        return con;
    }
    
    /***
     * �ر����ݿ�ķ���
     * @param con
     * @param ps
     * @param rs
     */
    public static void close(Connection con,PreparedStatement ps,ResultSet rs){
        if(rs!=null){//�ر���Դ����������쳣
            try {
                rs.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if(ps!=null){
            try {
                ps.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if(con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
    
    /***
     * ͬ����ɾ�ĵķ���
     * @param sql
     * @param arr
     * @return
     */
    public static boolean addUpdateDelete(String sql,Object[] arr){
        Connection con=null;
        PreparedStatement ps=null;
        try {
            con=BaseDao.getCon();//��һ�� ���������ݿ�Ĳ���
            ps=con.prepareStatement(sql);//�ڶ�����Ԥ����
            //������������ֵ
            if(arr!=null && arr.length!=0){
                for(int i=0;i<arr.length;i++){
                    ps.setObject(i+1, arr[i]);
                }
            }
            int count=ps.executeUpdate();//���Ĳ���ִ��sql���
            if(count>0){
                return true;
            }else{
                return false;
            }
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }
    
    /*public static void main(String[] args) {
        try {
            BaseDao.getCon();
            System.out.println("�������ݿ����ӳɹ�");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }*/
    
    
}