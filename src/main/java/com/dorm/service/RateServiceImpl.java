package com.dorm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.RateMapper;
import com.dorm.pojo.Rate;

@Service
public class RateServiceImpl implements RateService {

	@Autowired
	RateMapper rateMapper;
	
	@Override
	public List<Rate> getAllRates() {
		// TODO Auto-generated method stub
		Rate rate = new Rate();
		return rateMapper.getRates(rate);
	}

	@Override
	public List<Rate> getRates(Rate rate) {
		// TODO Auto-generated method stub
		return rateMapper.getRates(rate);
	}

	@Override
	public void addRate(Rate rate) {
		// TODO Auto-generated method stub
		rateMapper.addRate(rate);
	}

	@Override
	public void updateRate(Rate rate) {
		// TODO Auto-generated method stub
		rateMapper.updateRate(rate);
	}

	@Override
	public void deleteRate(Rate rate) {
		// TODO Auto-generated method stub
		rateMapper.deleteRate(rate);
	}

}
