package com.gtafe.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.gtafe.model.User;
import com.gtafe.service.IUserService;

@Controller
public class LoginController {

	@Autowired
	 IUserService userService;

	
	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginGet(){
		return "login";
	}
	
	/**
	 * 请求登录，验证用户
	 * @param session
	 * @param loginname
	 * @param password
	 * @param code
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView loginPost(HttpSession session,@RequestParam String loginname,@RequestParam String password){
    	Map<String,String> map=new HashMap<String,String>();
    	map.put("username", loginname);
    	map.put("password", password);
    	
    	User user=userService.login(map); 
    	ModelAndView mav=new ModelAndView();
    	if(user!=null){
    		System.out.println("登录的用户名是"+user.getUsername());           
            session.setAttribute("user", user);
            mav.addObject("user",user);
            mav.addObject("msg","登录成功！");
            mav.setViewName("index");
    	}else{
    		mav.addObject("error","用户名或密码有误！");
            mav.setViewName("login");
    	}
        return mav;
	}
	
	/**
	 * 访问系统首页
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/index")
	public String index(HttpSession session,Model model){

		return "index";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/default")
	public String defaultPage(){
		return "default";
	}
	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		/*session.removeAttribute("");*/	
		return "login";
	}
}
