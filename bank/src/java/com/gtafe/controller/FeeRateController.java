package com.gtafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gtafe.model.Piffrt;
import com.gtafe.service.IPiffrtService;

@Controller
@RequestMapping(value="/feeRate")
public class FeeRateController {
	@Autowired
  private IPiffrtService psi;
 
	@RequestMapping(value="/list")
	public String findAll(Model model){
		List<Piffrt> pf = psi.findAll();
		model.addAttribute("feeRateList", pf);
		return "feeRate_list";
	} 
	
	
	
	public IPiffrtService getPsi() {
		return psi;
	}

	public void setPsi(IPiffrtService psi) {
		this.psi = psi;
	}
	
	
}
