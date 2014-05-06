package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.ExchangeRateMapper;
import com.gtafe.model.ExchangeRate;
import com.gtafe.service.BaseTest;

public class ExchangeRateServiceImplTest extends BaseTest {
	@Autowired
	private ExchangeRateMapper mapper;

	@Test
	public void testAdd() throws Exception {
		ExchangeRate er = new ExchangeRate();
		er.setCRE_DAT("2013-10-22");
		er.setRAT_FLG("f");
		mapper.addExchangeRate(er);
	}

	@Test
	public void testFindAll() throws Exception {
		List<ExchangeRate> l = mapper.findAll();
		for (ExchangeRate r : l) {
			System.out.println(r.getCRE_TIM());
		}
	}

	@Test
	public void testDelete() throws Exception {
		mapper.deleteExchangeRate(5);
	}
    
	@Test
	public void testFindEx()throws Exception {
		ExchangeRate ex = mapper.selectByID(1);
		System.out.println(ex.getCUR_CDE());
	}
	public ExchangeRateMapper getMapper() {
		return mapper;
	}

	public void setMapper(ExchangeRateMapper mapper) {
		this.mapper = mapper;
	}
}
