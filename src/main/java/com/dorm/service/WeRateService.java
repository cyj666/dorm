package com.dorm.service;

import java.util.List;

import com.dorm.pojo.WeRate;

public interface WeRateService {

	public List<WeRate> getWeRates(WeRate weRate);
	public List<WeRate> getWeRatesByRoomNo(String roomNo);
	public List<WeRate> getWeRatesByData(String Date);
	public void addRate(WeRate weRate);
	public void deleteRate(WeRate weRate);
	public void updateRate(WeRate weRate);
	
}
