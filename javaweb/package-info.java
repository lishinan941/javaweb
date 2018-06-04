/**
 * 
 */
/**
 * @author Administrator
 *
 */
package com.bie.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bie.dao.UserDao;
import com.bie.po.User;
import com.bie.utils.BaseDao;

/** 
* @author BieHongLi 
* @version ����ʱ�䣺2017��2��21�� ����10:38:56 
* 
*/
public class UserDaoImpl implements UserDao{

    @Override
    public User login(User user) {
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            con=BaseDao.getCon();//1:��ȡ���ݿ������
            //2:��дsql���
            String sql="select * from user where name=? and password=? ";
            ps=con.prepareStatement(sql);//3��Ԥ����
            //4������ֵ
            ps.setString(1, user.getName());
            ps.setString(2, user.getPassword());
            rs=ps.executeQuery();//5:ִ��sql���
            User users=null;
            if(rs.next()){
                users=new User();
                //�����ݿ��л�ȡֵ���õ�ʵ�����setter������
                users.setId(rs.getInt("id"));
                users.setName(rs.getString("name"));
                users.setPassword(rs.getString("password"));
                users.setEmail(rs.getString("email"));
                users.setPhone(rs.getString("phone"));
                
                return user;
            }else{
                return null;
            }
            
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    /***
     * ����ķ�������ע��
     */
    @Override
    public boolean register(User user) {
        String sql="insert into user values(0,?,?,?,?) ";
        List<Object> list=new ArrayList<Object>();
        list.add(user.getName());
        list.add(user.getPassword());
        list.add(user.getEmail());
        list.add(user.getPhone());
        
        boolean flag=BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else{
            return false;
        }
    }

    
}