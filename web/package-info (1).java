/**
 * 
 */
/**
 * @author Administrator
 *
 */

package com.bie.dao;

import com.bie.po.User;

/** 
* @author BieHongLi 
* @version ����ʱ�䣺2017��2��21�� ����10:38:40 
* ����һ���ӿ����������û���½ע��ķ���
*/
public interface UserDao {

    /***
     * �û���½�ķ�������
     * @param user
     * @return
     */
    public User login(User user);
    
    /***
     * �û�ע��ķ�������
     * @param user
     * @return
     */
    public boolean register(User user);
}