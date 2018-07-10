package com.dorm.service;

import java.util.Date;
import java.util.List;

import com.dorm.pojo.Employee;
import com.dorm.pojo.Network;

public interface NetworkService {

	public List<Network> getAllNetwork();
	public List<Network> getNetWork(Network network);
	public Network getNetWorkByMAC(String MAC);
	public Network getNetWorkByIP(String IP);
	public Network getNetWorkByStart(Date start);
	public Network getNetWorkByEnd(Date end);
	public Network getNetWorkByContinued(Integer continued);
	
	
	public void addNetwork(Network network,Employee employee);
	
	public void deleteNetwork(Network network);
	
	public void updateNetwork(Network network,Employee employee);
	
}
