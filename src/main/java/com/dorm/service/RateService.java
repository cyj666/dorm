package com.dorm.service;

import java.util.List;

import com.dorm.pojo.Rate;

public interface RateService {

	public List<Rate> getAllRates();
	public List<Rate> getRates(Rate rate);
	public void addRate(Rate rate);
	public void updateRate(Rate rate);
	public void deleteRate(Rate rate);
	public List<Rate> getYear();
}
