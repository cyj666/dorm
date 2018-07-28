package com.dorm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dorm.pojo.RoomEmployeeDetails;

/**
 * Dao层
 * @author DELL
 *
 */
public interface RoomEmployeeDetailsMapper {
	
	public List<RoomEmployeeDetails> getAllDetails();  //只得到当前在住的所有信息
	
	public List<RoomEmployeeDetails> getAllDetailsNow();  
	public List<RoomEmployeeDetails> getAllHistoryDetails(); //只得到历史在住的信息
	public List<RoomEmployeeDetails> getSimpleDetail(RoomEmployeeDetails roomEmployeeDetails); 

	public List<RoomEmployeeDetails> getDetails(RoomEmployeeDetails roomEmployeeDetails);
	public List<RoomEmployeeDetails> getDetailsNow(RoomEmployeeDetails roomEmployeeDetails);
	public List<RoomEmployeeDetails> getLivingByEmployeeNo(@Param("employeeNo")String employeeNo);
	public List<RoomEmployeeDetails> getLivingByRoomNo(@Param("roomNo")String roomNo);
	
	public void addDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void addDetailsByList(List<RoomEmployeeDetails> details);
	public void addHistoryDetails(RoomEmployeeDetails roomEmployeeDetails);
	
	public void deleteDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void updateRoom(RoomEmployeeDetails roomEmployeeDetails);
	public void deleteHistoryDetails(RoomEmployeeDetails roomEmployeeDetails);
	
}
