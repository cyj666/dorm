package com.dorm.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.NetworkMapper;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Network;

@Service
public class NetworkServiceImpl implements NetworkService {

	@Autowired
	NetworkMapper networkMapper;
	
	
	@Override
	public List<Network> getAllNetwork() {
		// TODO Auto-generated method stub
		return networkMapper.getELN(null);
	}

	
	/**
	 * 自己决定吧，选择是否用单表还是联合查询
	 */
	@Override
	public List<Network> getNetWork(Network network) {
		// TODO Auto-generated method stub		
			return networkMapper.getELN(network);		
	}

	
	@Override
	public Network getNetWorkByMAC(String MAC) {
		// TODO Auto-generated method stub
		Network network = new Network();
		network.setMac(MAC);
		return networkMapper.getELN(network).get(0);
	}

	@Override
	public Network getNetWorkByIP(String IP) {
		// TODO Auto-generated method stub
		Network network = new Network();
		network.setIp(IP);
		return networkMapper.getELN(network).get(0);
	}

	@Override
	public Network getNetWorkByStart(Date start) {
		// TODO Auto-generated method stub
		Network network = new Network();
		network.setStart(start);
		return networkMapper.getELN(network).get(0);
	}

	@Override
	public Network getNetWorkByEnd(Date end) {
		// TODO Auto-generated method stub
		Network network = new Network();
		network.setEnd(end);
		return networkMapper.getELN(network).get(0);
	}

	@Override
	public Network getNetWorkByContinued(Integer continued) {
		// TODO Auto-generated method stub
		Network network = new Network();
		network.setContinued(continued);
		return networkMapper.getELN(network).get(0);
	}

	@Override
	public void addNetwork(Network network, Employee employee) {
		// TODO Auto-generated method stub
		networkMapper.addNetwork(network);
		networkMapper.addELN(employee.getEmployeeId(), network.getId());
	}

	@Override
	public void deleteNetwork(Network network) {
		// TODO Auto-generated method stub
		network = networkMapper.getELN(network).get(0);		
		networkMapper.deleteNetwork(network);
		networkMapper.deleteELN(network.getEmployee().getEmployeeId(), network.getId(),null);
	}

	@Override
	public void updateNetwork(Network network, Employee employee) {
		// TODO Auto-generated method stub
		networkMapper.updateNetwork(network);
		Integer id = networkMapper.getL(network);
		networkMapper.updateELN(employee.getEmployeeId(), network.getId(), id);
	}

}
