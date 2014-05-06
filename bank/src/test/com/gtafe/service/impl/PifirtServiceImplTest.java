package com.gtafe.service.impl;

import com.gtafe.model.Pifirt;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IPIFIRTService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-6
 * Time: 上午9:32
 */
public class PifirtServiceImplTest extends BaseTest {

    @Autowired
    private IPIFIRTService ipifirtService;

    @Test
    public void testSelectByID() throws Exception {
        Pifirt pifirt = ipifirtService.selectByID("123456789");
        System.out.println(pifirt);
    }

    @Test
    public void testSelectAll() throws Exception {
        List<Pifirt> pifirts = ipifirtService.selectAll();
        for(Pifirt pifirt : pifirts){
            System.out.println(pifirt);
        }
    }
    @Test
    public void testAdd() throws Exception {
        Pifirt pifirt = new Pifirt();
        pifirt.setIrt_key("1234567855");
        pifirt.setCur_cde("ab");
        pifirt.setIrt_cde("ab");
        pifirt.setIrt_kd1("a");
        pifirt.setIrt_kd2("b");
        pifirt.setEff_dat("ab");
        pifirt.setIrt_nam("哈哈哈哈哈哈哈");
        pifirt.setCur_flg("a");
        pifirt.setMod_flg("b");
        pifirt.setIrt_val(123.456789);
        pifirt.setIrt_sph(1.567);
        pifirt.setIrt_spl(2.567);
        pifirt.setSpr_flg("a");
        pifirt.setIrt_trm(123);
        pifirt.setCre_tlr("abcd");
        pifirt.setCre_dat(new Date());
        pifirt.setUpt_dat(new Date());
        pifirt.setCdr_flg("p");
        pifirt.setTrm_unt("a");
        pifirt.setUpt_tlr("a");
        pifirt.setRec_sts("P");

        ipifirtService.add(pifirt);
    }

    @Test
    public void testUpdate() throws Exception {
        Pifirt pifirt = new Pifirt();
        pifirt.setIrt_key("1234567855");
        pifirt.setCur_cde("ab");
        pifirt.setIrt_cde("ab");
        pifirt.setIrt_kd1("a");
        pifirt.setIrt_kd2("b");
        pifirt.setEff_dat("ab");
        pifirt.setIrt_nam("哈哈哈哈哈哈哈傻了你");
        pifirt.setCur_flg("a");
        pifirt.setMod_flg("b");
        pifirt.setIrt_val(123.456789);
        pifirt.setIrt_sph(1.567);
        pifirt.setIrt_spl(2.567);
        pifirt.setSpr_flg("a");
        pifirt.setIrt_trm(123);
        pifirt.setCre_tlr("abcd");
        pifirt.setCre_dat(new Date());
        pifirt.setUpt_dat(new Date());
        pifirt.setCdr_flg("p");
        pifirt.setTrm_unt("a");
        pifirt.setUpt_tlr("a");
        pifirt.setRec_sts("P");

        ipifirtService.update(pifirt);
    }
    @Test
    public void testSoftDeleteById() throws Exception {
        ipifirtService.softDeleteById("1234567855");
    }
}
