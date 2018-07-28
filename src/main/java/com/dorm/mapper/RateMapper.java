package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.Rate;

public interface RateMapper {
	
	public List<Rate> getRates(Rate rate);
	public void addRate(Rate rate);
	public void deleteRate(Rate rate);
	public void updateRate(Rate rate);
	public List<Rate> getYear();
}
