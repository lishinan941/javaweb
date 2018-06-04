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
* @version ����ʱ�䣺2017��2��21�� ����1:34:17 
* ע���servlet
*/
@WebServlet("/user/userregister")
public class UserRegisterServlet extends HttpServlet{
    
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
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        
        //��ȡregister.jspҳ���ύ���˺ź��������õ�ʵ����User��
        user.setName(name);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhone(phone);
        
        //�������ݽ�����
        UserDao dao=new UserDaoImpl();
        boolean flag=dao.register(user);
        if(flag){
            request.setAttribute("info", "ע��ɹ�");
        }else{
            request.setAttribute("info", "ע��ʧ��");
        }
        
        request.getRequestDispatcher("/index/info.jsp").forward(request, response);
    }
    
}