package com.gtafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gtafe.model.Pifitm;
import com.gtafe.service.IPifitmService;


/**
 * 货币类控制层
 * @author li.wan
 *
 */
@Controller
@RequestMapping(value="/pifitm")
public class PifitmController {
    @Autowired
    IPifitmService  pifitmService;
    
    
    @RequestMapping(value="/delete")
	public String  deletePifitm(HttpServletRequest request,HttpServletResponse response,@RequestParam String itm_num) throws IOException {      
    	   request.setCharacterEncoding("UTF-8");
		   response.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out=response.getWriter();
		   String msg=null;
    	    if(pifitmService.deletePifitm(itm_num)){
    	    	System.out.println("删除成功！"); 
    	    	msg="删除成功"; 
    	    }else{
    	    	System.out.println("删除失败");	    	    	
    	    	msg="删除失败";
    	    }
    	    request.getSession().setAttribute("result", msg);
    	    return "redirect:/pifitm.html";	    	    
	}
    
    
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
	public String toInsertPifitm() {
		return "pifitm_add";
	}
    
    @RequestMapping(value="/add",method=RequestMethod.POST)
	public String insertPifitm(HttpServletRequest request,HttpServletResponse response, Pifitm pifitm){
    	      String msg=null;
			  if(pifitmService.insertPifitm(pifitm)){
				    System.out.println("保存成功！"); 
	    	    	msg="保存成功";
	    	    }else{
	    	    	System.out.println("保存失败");	    	    	
	    	    	msg="保存失败";
	    	    }
			  request.getSession().setAttribute("result", msg);
		 return "redirect:/pifitm.html";	    
	}
    
    @RequestMapping
	public String selectAllPifitm(HttpServletRequest request,HttpServletResponse response,Model model) {	
		List<Pifitm> pifitmList =pifitmService.selectAllPifitm();
		model.addAttribute("pifitmList",pifitmList);
		String msg=(String) request.getSession().getAttribute("result");
		model.addAttribute("result", msg);
		request.getSession().removeAttribute("result");	
		return "pifitms";
	}
    
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String toEditPifitm(@RequestParam String itm_num,Model model) {		
		Pifitm pifitm=pifitmService.getPifitm(itm_num);		
		model.addAttribute("pifitm", pifitm);	
		return "pifitm_edit";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String updatePifitm(HttpServletRequest request,HttpServletResponse response,Pifitm pifitm) throws IOException {	
		   request.setCharacterEncoding("UTF-8");
		   response.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html;charset=UTF-8");	
		  PrintWriter out=response.getWriter();
		  String msg=null;
		if(pifitmService.updatePifitm(pifitm)){
			msg="更新成功！"; 
		}else{
			msg="更新失败！";
		}
		request.getSession().setAttribute("result", msg);
			return "redirect:/pifitm.html";		
	}
	
   
}
