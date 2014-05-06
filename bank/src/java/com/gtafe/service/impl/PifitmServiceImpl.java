package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.PifitmMapper;
import com.gtafe.model.Pifitm;
import com.gtafe.service.IPifitmService;


@Service
public class PifitmServiceImpl implements IPifitmService{

	@Autowired
    PifitmMapper pifitmMapper;

	public boolean deletePifitm(String itm_num) {      
		try {
			pifitmMapper.deletePifitm(itm_num);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean insertPifitm(Pifitm pifitm) {
		try {
			pifitmMapper.insertPifitm(pifitm);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<Pifitm> selectAllPifitm() {		
		return pifitmMapper.selectAllPifitm();
	}

	public boolean updatePifitm(Pifitm pifitm) {
		try {
			pifitmMapper.updatePifitm(pifitm);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
   
	public Pifitm getPifitm(String itm_num){
		return pifitmMapper.getPifitm(itm_num);
	}
}
