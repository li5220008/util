package com.gtafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gtafe.model.Pifccy;
import com.gtafe.service.IPifccyService;


/**
 * 货币类控制层
 * @author li.wan
 *
 */
@Controller
@RequestMapping(value="/pifccy")
public class PifccyController {
    @Autowired
    IPifccyService  pifccyService;
    
    
    @RequestMapping(value="/delete")
	public String  deletePifccy(HttpServletRequest request,HttpServletResponse response,@RequestParam String cur_cde) throws IOException {      
    	   request.setCharacterEncoding("UTF-8");
		   response.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out=response.getWriter();
    	    if(pifccyService.deletePifccy(cur_cde)){
    	    	out.print("<script language=\"javascript\">alert('删除成功');</script>"); 
    	    }else{
    	    	out.print("<script language=\"javascript\">alert('删除失败');</script>"); 
    	    }
    	    return "redirect:/pifccy.html";	    	    
	}
    
    
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
	public String toInsertPifccy() {
		return "pifccy_add";
	}
    
    @RequestMapping(value="/add",method=RequestMethod.POST)
	public String insertPifccy(HttpServletRequest request,HttpServletResponse response, Pifccy pifccy) throws IOException {
    	   request.setCharacterEncoding("UTF-8");
		   response.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html;charset=UTF-8");
    	      PrintWriter out=response.getWriter();
    	      System.out.println("数据绑定成功！启用日期"+pifccy.getEff_dat());
			  if(pifccyService.insertPifccy(pifccy)){
				  System.out.println("保存成功！");
	    	    	out.print("<script language=\"javascript\">alert('保存成功');</script>"); 
	    	    	
	    	    }else{
	    	    	System.out.println("保存失败");
	    	    	out.print("<script language=\"javascript\">alert('保存失败');</script>"); 
	    	    }
		 return "redirect:/pifccy.html";	    
	}
    
    @RequestMapping
	public String selectAllPifccy(HttpServletRequest request,HttpServletResponse response,Model model) {	
		List<Pifccy> pifccyList =pifccyService.selectAllPifccy();
		model.addAttribute("pifccyList",pifccyList);
		return "pifccys";
	}
    
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String toEditPifccy(@RequestParam String cur_cde,Model model) {		
		Pifccy pifccy=pifccyService.getPifccy(cur_cde);		
		model.addAttribute("pifccy", pifccy);	
		System.out.println("要修改的货币是"+pifccy.getCur_cde());
		return "pifccy_edit";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String updatePifccy(HttpServletRequest request,HttpServletResponse response,Pifccy pifccy) throws IOException {	
		   request.setCharacterEncoding("UTF-8");
		   response.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html;charset=UTF-8");	
		  PrintWriter out=response.getWriter();
		if(pifccyService.updatePifccy(pifccy)){
			out.print("<script language=\"javascript\">alert('更新成功');</script>"); 
		}else{
			out.print("<script language=\"javascript\">alert('更新失败');</script>"); 
		}
			return "redirect:/pifccy.html";		
	}
	
   
}
