package com.gtafe.service.impl;

import com.gtafe.dao.PifbusMapper;
import com.gtafe.model.Pifbus;
import com.gtafe.service.IPIFBUSService;
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
public class PifbusServiceImpl implements IPIFBUSService {

    @Autowired
    private PifbusMapper pifbusMapper;

    public Pifbus selectByID(String id) {
        return pifbusMapper.selectByID(id);
    }

    public List<Pifbus> selectAll() {
        return pifbusMapper.fetchAll();
    }

    public void add(Pifbus pifbus) {
        pifbusMapper.add(pifbus);
    }

    public void update(Pifbus pifbus) {
        pifbusMapper.update(pifbus);
    }

    public void softDeleteById(String id) {
        pifbusMapper.softDeleteById(id);
    }
}
