package com.gtafe.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.gtafe.model.ExchangeRate;
import com.gtafe.service.IExchangeRateService;
import com.gtafe.util.DateTimeutil;


@Controller
public class ExchangeRateController {
	@Autowired
	private IExchangeRateService irs;

	@RequestMapping("/exchangeList")
	public String listAll(Model model) {
		List<ExchangeRate> l = irs.findAll();
		model.addAttribute("list", l);
		return "exchangeRate_list";
	}
    @RequestMapping(value="/test")
    public void test(){
    	System.out.println("test");
    }
	@RequestMapping(value="/addExchange", method=RequestMethod.GET)
	public String addExchange(Model model){
		model.addAttribute("exchange",new ExchangeRate());
		return "ExchangeRate_add";
	}
	
	@RequestMapping(value="/deleteExchange")
	public String deleteUser(int id){
		irs.deleteExchangeRate(id);
		return "redirect:/exchangeList";
	}
	@RequestMapping(value="/addExchange", method=RequestMethod.POST)
	public String addExchange(ExchangeRate exchange){
		Date d = new Date();
		String date = DateTimeutil.Dateformate(d, DateTimeutil.FULL_YMD_HMS);
		String date1 = DateTimeutil.Dateformate(d, DateTimeutil.FULL_HMS);
		exchange.setCRE_DAT(date);
		exchange.setCRE_TIM(date1);
		exchange.setUPT_DAT(date);
		irs.addExchangeRate(exchange);
		return "redirect:/exchangeList";
	}

	public IExchangeRateService getIrs() {
		return irs;
	}

	public void setIrs(IExchangeRateService irs) {
		this.irs = irs;
	}

	protected void sendMsg(HttpServletResponse response, String content)
			throws Exception {
		// response.setContentType("html/txt");
		response.setCharacterEncoding("gb2312");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache, must-revalidate");
		response.getWriter().write(content);

		response.getWriter().flush();
		response.getWriter().close();
	}
}
