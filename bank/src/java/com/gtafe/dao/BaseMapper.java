package com.gtafe.dao;



import java.util.List;

/**
 * Desc: 基础通用数据访问接口，包含常用增删改查操作
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午1:46
 */
public interface BaseMapper<T> {
    T selectByID(String id);
    List<T> fetchAll();
    void add(T T);
    void update(T T);
    void softDeleteById(String id);
}
