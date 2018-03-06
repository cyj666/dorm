package com.dorm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.RoomEmployeeDetailsMapper;
import com.dorm.pojo.RoomEmployeeDetails;

@Service
public class RoomEmployeeDetailsServiceImpl implements RoomEmployeeDetailsService {

	@Autowired
	RoomEmployeeDetailsMapper roomEmployeeDetailsMapper;
	
	@Override
	public List<RoomEmployeeDetails> getAllDetails() {
		// TODO Auto-generated method stub
		List<RoomEmployeeDetails> roomEmployeeDetails = roomEmployeeDetailsMapper.getAllDetails();
		return roomEmployeeDetails;
	}

	@Override
	public List<RoomEmployeeDetails> getDetails(RoomEmployeeDetails roomEmployeeDetails) {
		// TODO Auto-generated method stub
		List<RoomEmployeeDetails> list = roomEmployeeDetailsMapper.getDetails(roomEmployeeDetails);
		return list;
	}

	@Override
	public List<RoomEmployeeDetails> getDetailsByRoomNo(String roomNo) {
		// TODO Auto-generated method stub
		RoomEmployeeDetails roomEmployeeDetails = new RoomEmployeeDetails();
		roomEmployeeDetails.setRoomNo(roomNo);
		List<RoomEmployeeDetails> list = roomEmployeeDetailsMapper.getDetails(roomEmployeeDetails);
		return list;
	}

	@Override
	public List<RoomEmployeeDetails> getDetailsByEmployeeNo(String employeeNo) {
		// TODO Auto-generated method stub
		RoomEmployeeDetails roomEmployeeDetails = new RoomEmployeeDetails();
		roomEmployeeDetails.setEmployeeNo(employeeNo);
		List<RoomEmployeeDetails> list = roomEmployeeDetailsMapper.getDetails(roomEmployeeDetails);
		return list;
	}

	@Override
	public void addDetails(RoomEmployeeDetails roomEmployeeDetails) {
		// TODO Auto-generated method stub
		roomEmployeeDetailsMapper.addDetails(roomEmployeeDetails);
	}

	@Override
	public void addDetailsByList(List<RoomEmployeeDetails> details) {
		// TODO Auto-generated method stub
		roomEmployeeDetailsMapper.addDetailsByList(details);
	}

	@Override
	public void deleteDetails(RoomEmployeeDetails roomEmployeeDetails) {
		// TODO Auto-generated method stub
		roomEmployeeDetailsMapper.deleteDetails(roomEmployeeDetails);
	}

	@Override
	public void updateRoom(RoomEmployeeDetails roomEmployeeDetails) {
		// TODO Auto-generated method stub
		roomEmployeeDetailsMapper.updateRoom(roomEmployeeDetails);
	}

	@Override
	public List<RoomEmployeeDetails> getAllDetailsNow() {
		// TODO Auto-generated method stub
		return roomEmployeeDetailsMapper.getAllDetailsNow();
	}

	@Override
	public List<RoomEmployeeDetails> getLivingByEmployeeNo(String employeeNo) {
		// TODO Auto-generated method stub
		return roomEmployeeDetailsMapper.getLivingByEmployeeNo(employeeNo);
	}

	@Override
	public List<RoomEmployeeDetails> getLivingByRoomNo(String roomNo) {
		// TODO Auto-generated method stub
		return roomEmployeeDetailsMapper.getLivingByRoomNo(roomNo);
	}



}
