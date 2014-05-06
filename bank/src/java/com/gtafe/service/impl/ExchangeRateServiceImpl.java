package com.gtafe.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gtafe.dao.ExchangeRateMapper;
import com.gtafe.model.ExchangeRate;
import com.gtafe.service.IExchangeRateService;

@Service
public class ExchangeRateServiceImpl implements IExchangeRateService {
   @Autowired
   ExchangeRateMapper exchangeRateMapper;

public void addExchangeRate(ExchangeRate er){
	exchangeRateMapper.addExchangeRate(er);
}

public List<ExchangeRate> findAll() {
	
	return exchangeRateMapper.findAll();
}

public ExchangeRate selectByID(int XRT_KEY) {
	// TODO Auto-generated method stub
	return exchangeRateMapper.selectByID(XRT_KEY);
}

public void deleteExchangeRate(int XRT_key) {
	// TODO Auto-generated method stub
	exchangeRateMapper.deleteExchangeRate(XRT_key);
}
   
   
}
