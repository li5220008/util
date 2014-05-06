package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.PifitmMapper;
import com.gtafe.model.Pifitm;
import com.gtafe.service.BaseTest;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-4-17
 * Time: 下午1:53
 */
public class PifitmServiceImplTest extends BaseTest {

	@Autowired
    PifitmMapper pifitmMapper;
	
	@Test
	public void deletePifitm() {      
			pifitmMapper.deletePifitm("2");
	}

	@Test
	public void insertPifitm() {
		    Pifitm pifitm=new Pifitm();
		    pifitm.setItm_num("23");
		    pifitm.setItm_nam("测试");
			pifitmMapper.insertPifitm(pifitm);	
	}
	@Test
	public void selectAllPifitm() {	
		List<Pifitm> pifitmList=pifitmMapper.selectAllPifitm();
		System.out.println("数量是"+pifitmList.size());
		for (Pifitm pifitm : pifitmList) {			
			System.out.println("科目号"+pifitm.getItm_num()+"科目名称："+pifitm.getItm_nam());
		}
	}

	@Test
	public void updatePifitm() {
		Pifitm pifitm=new Pifitm();
	    pifitm.setItm_num("01");
	    pifitm.setItm_nam("投资类");
		 pifitmMapper.updatePifitm(pifitm);
	}
	@Test
	public void getPifitm(){
		System.out.println(pifitmMapper.getPifitm("1").getItm_nam());
	}


}
