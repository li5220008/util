package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Pifccy;

public interface IPifccyService {
	public boolean insertPifccy(Pifccy pifccy);
	public boolean deletePifccy(String cur_cde);
	public boolean updatePifccy(Pifccy pifccy);
	public List<Pifccy> selectAllPifccy();
	public Pifccy getPifccy(String cur_cde);
}
