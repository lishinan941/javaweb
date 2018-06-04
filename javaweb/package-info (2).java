/**
 * 
 */
/**
 * @author Administrator
 *
 */
package com.bie.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bie.dao.UserDao;
import com.bie.dao.impl.UserDaoImpl;
import com.bie.po.User;


/** 
* @author BieHongLi 
* @version ����ʱ�䣺2017��2��21�� ����10:49:44 
* 
*/
@WebServlet("/user/userlogin")
public class UserLoginServlet extends HttpServlet{
    
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        User user=new User();
        //��ȡlogin.jspҳ���ύ���˺ź�����
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        //��������
        System.out.println(name+" "+password);
        //��ȡlogin.jspҳ���ύ���˺ź��������õ�ʵ����User��
        user.setName(name);
        user.setPassword(password);
        
        //�������ݽ�����
        UserDao dao=new UserDaoImpl();
        User us=dao.login(user);
        //���Է��ص�ֵ
        System.out.println(us);
        if(us!=null){
            request.setAttribute("info", "��½�ɹ�");
        }else{
            request.setAttribute("info", "��¼ʧ��");
        }
        
        request.getRequestDispatcher("/index/info.jsp").forward(request, response);
    }
    
    
    
}