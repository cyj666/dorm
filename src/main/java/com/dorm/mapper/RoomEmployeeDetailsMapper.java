package com.dorm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dorm.pojo.RoomEmployeeDetails;

public interface RoomEmployeeDetailsMapper {
	public List<RoomEmployeeDetails> getAllDetails();
	public List<RoomEmployeeDetails> getAllDetailsNow();
	public List<RoomEmployeeDetails> getDetails(RoomEmployeeDetails roomEmployeeDetails);
	public List<RoomEmployeeDetails> getLivingByEmployeeNo(@Param("employeeNo")String employeeNo);
	public List<RoomEmployeeDetails> getLivingByRoomNo(@Param("roomNo")String roomNo);
	
	public void addDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void addDetailsByList(List<RoomEmployeeDetails> details);
	
	public void deleteDetails(RoomEmployeeDetails roomEmployeeDetails);
	public void updateRoom(RoomEmployeeDetails roomEmployeeDetails);
	
	
}
