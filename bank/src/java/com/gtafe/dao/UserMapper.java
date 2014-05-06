package com.gtafe.dao;

import java.util.List;
import java.util.Map;

import com.gtafe.model.User;
/**
 * User操作接口
 * 方法名 selectUserByID 必须与 User.xml 里面配置的 
 * select 的id 对应（<select id="selectUserByID"）
 * @author li.wan
 *
 */
public interface UserMapper {
    public User selectUserByID(int id);   
    public User login(Map map);
    public List<User> findAllUser();
    public List<User> selectUsers(String userName);    
    public void addUser(User user);
    public void updateUser(User user);
    public void deleteUser(int id); 
    
    public void delUserBatch(int[] ints);
    public void insertUserBatch(List<User> userlist);
}
