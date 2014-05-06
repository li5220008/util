package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.FeeRateMapper;
import com.gtafe.model.Piffrt;
import com.gtafe.service.IPiffrtService;

public class PiffrtServiceImpl implements IPiffrtService {
    
	@Autowired
	private FeeRateMapper frm;
	public void addFeeRate(Piffrt pf) {
		frm.addFeeRate(pf);
	}

	public void deleteFeeRate(String id) {
      frm.deleteFeeRate(id);
	}

	public List<Piffrt> findAll() {
		return frm.findAll();
	}

	public Piffrt selectFeeRateByID(String id) {
		return frm.selectFeeRateByID(id);
	}

}
