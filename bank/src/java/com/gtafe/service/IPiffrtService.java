package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Piffrt;

public interface IPiffrtService {

	   public Piffrt selectFeeRateByID(String id);
	   
	   public List<Piffrt> findAll();
	   
	   public void deleteFeeRate(String id);
	   
	   public void addFeeRate(Piffrt pf);
	   
	   
}
