package com.gtafe.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gtafe.model.User;
import com.gtafe.service.IUserService;

/**            
 * @author li.wan
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    IUserService userService;


    
    @RequestMapping("/list")
    public ModelAndView listall(HttpServletRequest request,HttpServletResponse response){
    	List<User> users=userService.findAllUser();
        for (User u:users) {
			System.out.println(u.getUsername()+u.getUserAddress());
		}
        ModelAndView mav=new ModelAndView("list");
        mav.addObject("users",users);
        return mav;
    }
    
    @RequestMapping("/addUser")
    public ModelAndView addUser(HttpServletRequest request,HttpServletResponse response){
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");  	
    	String repsd=request.getParameter("repsd");
    	String userAge=request.getParameter("userAge");
    	String userAddress=request.getParameter("userAddress");
        User user=new User();
        user.setPassword(password);
        user.setUsername(username);
        user.setUserAge(Integer.parseInt(userAge));
        user.setUserAddress(userAddress);
        User login_user=(User) request.getSession().getAttribute("user");
        userService.addUser(user);    
        ModelAndView mav=new ModelAndView("main");
        mav.addObject("msg", "添加成功！");
        mav.addObject("user",login_user);
        return mav;
    }
   
    @RequestMapping("/toAddUser")
    public ModelAndView toAddUser(HttpServletRequest request,HttpServletResponse response){
    	ModelAndView mav=new ModelAndView("addUser");
    	 return mav;
    }
    
    @RequestMapping("/AddUserList")
    public ModelAndView addUserList(HttpServletRequest request,HttpServletResponse response){  
    	List<User> userList=new ArrayList<User>();
    	for (int i = 0; i < 10; i++) {
			User user = new User();
			user.setPassword("123");
			user.setUsername("赛亚人" + i);
			user.setUserAge(25);
			user.setUserAddress("那美克星");
			userList.add(user);
      }
    	int i= userService.addUserList(userList);
    	ModelAndView mav=new ModelAndView("main");
    	mav.addObject("msg", "批量添加成功！");
    	return mav;
    }
}
