package com.dorm.service;

import java.util.List;

import com.dorm.pojo.RoomEmployeeDetails;

public interface RoomEmployeeDetailsService {
	/*多表查询*/
	public List<RoomEmployeeDetails> getAllDetails();  //查询所有记录
	public List<RoomEmployeeDetails> getAllDetailsNow(); //查询搬出时间为空的记录（当前在住表）
	public List<RoomEmployeeDetails> getDetails(RoomEmployeeDetails roomEmployeeDetails);
	public List<RoomEmployeeDetails> getDetailsNow(RoomEmployeeDetails roomEmployeeDetails);
	public List<RoomEmployeeDetails> getDetailsByRoomNo(String roomNo);
	public List<RoomEmployeeDetails> getDetailsByEmployeeNo(String employeeNo);
	
	public List<RoomEmployeeDetails> getAllHistoryDetails(); //查询历史记录
	
	/*单表查询*/
	public List<RoomEmployeeDetails> getLivingByEmployeeNo(String employeeNo);
	public List<RoomEmployeeDetails> getLivingByRoomNo(String roomNo);
	
	
	
	public void addDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void addHistoryDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void addDetailsByList(List<RoomEmployeeDetails> details);
	
	
	public void deleteDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void deleteHistoryDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void updateRoom(RoomEmployeeDetails roomEmployeeDetails);
}
