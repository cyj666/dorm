package com.dorm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.WeRateMapper;
import com.dorm.pojo.WeRate;

@Service
public class WeRateServiceImpl implements WeRateService {

	@Autowired
	WeRateMapper weRateMapper;
	
	@Override
	public List<WeRate> getWeRates(WeRate weRate) {
		// TODO Auto-generated method stub
		return weRateMapper.getWeRates(weRate);
	}

	@Override
	public List<WeRate> getWeRatesByRoomNo(String roomNo) {
		// TODO Auto-generated method stub
		WeRate weRate = new WeRate();
		weRate.setRoomNo(roomNo);		
		return weRateMapper.getWeRates(weRate);
	}

	@Override
	public List<WeRate> getWeRatesByData(String date) {
		// TODO Auto-generated method stub
		WeRate weRate = new WeRate();
		weRate.setDate(date);	
		return weRateMapper.getWeRates(weRate);
	}

	@Override
	public void addRate(WeRate weRate) {
		// TODO Auto-generated method stub
		weRateMapper.addRate(weRate);
	}

	@Override
	public void deleteRate(WeRate weRate) {
		// TODO Auto-generated method stub
		weRateMapper.deleteRate(weRate);
	}

	@Override
	public void updateRate(WeRate weRate) {
		// TODO Auto-generated method stub
		weRateMapper.updateRate(weRate);
	}

}
