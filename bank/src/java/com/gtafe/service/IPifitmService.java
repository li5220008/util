package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Pifitm;

/**
 * 科目类的服务接口
 * @author li.wan
 *
 */
public interface IPifitmService {
	public boolean insertPifitm(Pifitm pifitm);
	public boolean deletePifitm(String cur_cde);
	public boolean updatePifitm(Pifitm pifitm);
	public List<Pifitm> selectAllPifitm();
	public Pifitm getPifitm(String cur_cde);
}
