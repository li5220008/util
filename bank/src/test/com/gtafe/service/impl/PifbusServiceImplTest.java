package com.gtafe.service.impl;

import com.gtafe.model.Pifbus;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IPIFBUSService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午4:51
 */
public class PifbusServiceImplTest extends BaseTest {

    @Autowired
    private IPIFBUSService ipifbusService;

    @Test
    public void testSelectByID() throws Exception {
        Pifbus pifbus = ipifbusService.selectByID("001");
        System.out.println(pifbus);
    }

    @Test
    public void testSelectAll() throws Exception {
        List<Pifbus> pifbuses = ipifbusService.selectAll();
        for(Pifbus pifbus : pifbuses){
            System.out.println(pifbus);
        }
    }

    @Test
    public void testAdd() throws Exception {
        Pifbus pifbus = new Pifbus();
        pifbus.setBus_cde("001");
        pifbus.setBus_app("ab");
        pifbus.setBus_itm("abc");
        pifbus.setBus_nam("姓名上看看快快快快姓名上看看快快快快快快快快快快看快快快快快快快快快快快快快快快快看快快快快快快快看快快快快快快快快快快快快快快快快看快快快快快快快快看");
        pifbus.setBus_snm("abck");
        pifbus.setUpt_dat(new Date());
        pifbus.setUpt_tlr("1");
        pifbus.setBus_kd1("1");
        pifbus.setBus_kd2(39);
        pifbus.setRec_sts("P");

        ipifbusService.add(pifbus);
    }

    @Test
    public void testUpdate() throws Exception {
        Pifbus pifbus = new Pifbus();
        pifbus.setBus_cde("004");
        pifbus.setBus_app("ab");
        pifbus.setBus_itm("abc");
        pifbus.setBus_nam("姓名");
        pifbus.setBus_snm("abck");
        pifbus.setUpt_dat(new Date());
        pifbus.setUpt_tlr("2");
        pifbus.setBus_kd1("3");
        pifbus.setBus_kd2(39);
        pifbus.setRec_sts("P");
        ipifbusService.update(pifbus);
    }

    @Test
    public void testSoftDeleteById() throws Exception {
        ipifbusService.softDeleteById("004");
    }
}
