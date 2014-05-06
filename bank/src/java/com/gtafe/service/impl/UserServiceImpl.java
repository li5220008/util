package com.gtafe.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gtafe.dao.UserMapper;
import com.gtafe.model.User;
import com.gtafe.service.IUserService;


@Service
public class UserServiceImpl implements IUserService {
    
	@Autowired
    private UserMapper userMapper;
  
	public void addUser(User user) {
		userMapper.addUser(user);
	}

	public void deleteUser(int id) {
		userMapper.deleteUser(id);
	}

	public List<User> findAllUser() {
		List<User> userList=userMapper.findAllUser();
		return userList;
	}

	public User login(Map map) {	  
		return  userMapper.login(map);
	}

	public User selectUserByID(int id) {
		// TODO Auto-generated method stub
		return userMapper.selectUserByID(id);
	}

	public List<User> selectUsers(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectUsers(userName);
	}

	public void updateUser(User user) {
		userMapper.updateUser(user);

	}

    @Transactional
    public int addUserList(List<User> userList){  
    	try {
			for (int i = 0; i <userList.size(); i++) {
				User user = userList.get(i);
				if(i==8){
					user.setPassword(null);
				}
				userMapper.addUser(user);
			}
		} catch (Exception e) {
             e.printStackTrace();
		}
		return 10;
    }
    
    public void delUserBatch(int[] ints){
    	userMapper.delUserBatch(ints);
    }
    public void insertUserBatch(List<User> userList){
    	userMapper.insertUserBatch(userList);
    }
}
