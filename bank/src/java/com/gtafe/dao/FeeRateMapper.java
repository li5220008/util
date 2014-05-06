package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.Piffrt;
//费率映射接口
public interface FeeRateMapper extends BaseMapper<Piffrt> {
	
   public Piffrt selectFeeRateByID(String id);
   
   public List<Piffrt> findAll();
   
   public void deleteFeeRate(String id);
   
   public void addFeeRate(Piffrt pf);
   
}
