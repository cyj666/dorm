package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.WeRate;

public interface WeRateMapper {

	public List<WeRate> getWeRates(WeRate weRate);
	public void addRate(WeRate weRate);
	public void deleteRate(WeRate weRate);
	public void updateRate(WeRate weRate);
}
