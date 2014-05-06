package com.gtafe.dao;


import java.util.List;

import com.gtafe.model.ExchangeRate;

public interface ExchangeRateMapper {
    public ExchangeRate selectByID(int XRT_KEY);
    public List<ExchangeRate> findAll();
    public void addExchangeRate(ExchangeRate er);
    public void deleteExchangeRate(int d);
    
}
