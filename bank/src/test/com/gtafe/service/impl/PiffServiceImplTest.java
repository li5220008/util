package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.FeeRateMapper;
import com.gtafe.model.Piffrt;
import com.gtafe.service.BaseTest;

public class PiffServiceImplTest extends BaseTest{
	@Autowired
 private FeeRateMapper fm;  	
  @Test
  public void testFindAll(){
	  List<Piffrt> p  = fm.findAll();
	  for(Piffrt s:p){
		  System.out.println(s.getCRETLR());
	  }
	  
  }
}
