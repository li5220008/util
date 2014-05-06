package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.Pifccy;


/**
 * 货币表操作接口
 * @author li.wan
 *
 */
public interface PifccyMapper {
	public void insertPifccy(Pifccy pifccy);
	public void deletePifccy(String cur_cde);
	public void updatePifccy(Pifccy pifccy);
	public List<Pifccy> selectAllPifccy();
	public Pifccy getPifccy(String cur_cde);
}
