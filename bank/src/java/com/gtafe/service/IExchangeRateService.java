package com.gtafe.service;

import java.util.Date;
import java.util.List;

import com.gtafe.model.ExchangeRate;

public interface IExchangeRateService {
	public ExchangeRate selectByID(int XRT_KEY);

	public List<ExchangeRate> findAll();

	public void addExchangeRate(ExchangeRate er);
	
	public void deleteExchangeRate(int XRT_key);
}
