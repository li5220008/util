package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.Pifccy;
import com.gtafe.model.Pifitm;


/**
 * 货币表操作接口
 * @author li.wan
 *
 */
public interface PifitmMapper {
	public void insertPifitm(Pifitm pifitm);
	public void deletePifitm(String itm_num);
	public void updatePifitm(Pifitm pifitm);
	public List<Pifitm> selectAllPifitm();
	public Pifitm getPifitm(String itm_num);
}
