package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.PifccyMapper;
import com.gtafe.model.Pifccy;
import com.gtafe.service.IPifccyService;


@Service
public class PifccyServiceImpl implements IPifccyService{

	@Autowired
    PifccyMapper pifccyMapper;
	
	public boolean deletePifccy(String cur_cde) {      
		try {
			pifccyMapper.deletePifccy(cur_cde);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean insertPifccy(Pifccy pifccy) {
		try {
			pifccyMapper.insertPifccy(pifccy);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<Pifccy> selectAllPifccy() {		
		return pifccyMapper.selectAllPifccy();
	}

	public boolean updatePifccy(Pifccy pifccy) {
		try {
			pifccyMapper.updatePifccy(pifccy);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
   
	public Pifccy getPifccy(String cur_cde){
		return pifccyMapper.getPifccy(cur_cde);
	}
}
