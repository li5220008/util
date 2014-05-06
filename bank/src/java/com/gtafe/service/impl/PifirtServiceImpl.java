package com.gtafe.service.impl;

import com.gtafe.dao.PifirtMapper;
import com.gtafe.model.Pifirt;
import com.gtafe.service.IPIFIRTService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午4:41
 */
@Service
public class PifirtServiceImpl implements IPIFIRTService {

    @Autowired
    private PifirtMapper pifirtMapper;

    public Pifirt selectByID(String id) {
        return pifirtMapper.selectByID(id);
    }

    public List<Pifirt> selectAll() {
        return pifirtMapper.fetchAll();
    }

    public void add(Pifirt pifbus) {
        pifirtMapper.add(pifbus);
    }

    public void update(Pifirt pifbus) {
        pifirtMapper.update(pifbus);
    }

    public void softDeleteById(String id) {
        pifirtMapper.softDeleteById(id);
    }
}
