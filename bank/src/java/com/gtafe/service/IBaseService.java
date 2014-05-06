package com.gtafe.service;


import java.util.List;

/**
 * Desc: 基础增删改查通用服务类
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午7:20
 */
public interface IBaseService<E> {
    E selectByID(String id);
    List<E> selectAll();
    void add(E E);
    void update(E E);
    void softDeleteById(String id);
}
