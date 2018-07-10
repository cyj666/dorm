package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.Repair;

public interface RepairMapper {

	public List<Repair> getRepair(Repair repair);
	
	public void addRepair(Repair repair);
	
	public void deleteRepair(Repair repair);
	
	public void updateRepair(Repair repair);
}
