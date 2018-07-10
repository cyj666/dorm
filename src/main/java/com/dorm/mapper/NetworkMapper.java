package com.dorm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dorm.pojo.Network;

public interface NetworkMapper {

	public Network getNetwork(Network network);
	public Network getELNByEmployeeName(@Param("employeName")String employeName);
	public Network getELNByEmployeeNo(@Param("employeeNo")String employeeNo);
	public List<Network> getELN(Network network);
	public Integer getL(Network network);
	
	
	public void addNetwork(Network network);
	public void addELN(@Param("employeeId")Integer employeeId,@Param("networkId")Integer networkId);
	
	public void deleteNetwork(Network network);
	public void deleteELN(@Param("employeeId")Integer employeeId,@Param("networkId")Integer networkId,@Param("id")Integer id);
	
	public void updateNetwork(Network network);
	public void updateELN(@Param("employeeId")Integer employeeId,@Param("networkId")Integer networkId,@Param("id")Integer id);
	
}
