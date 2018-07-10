package com.dorm.service;

import java.util.Date;
import java.util.List;

import com.dorm.pojo.Repair;

public interface RepairService {

	public Repair getRepairByRoom(String roomNo);  //通过房间号查询
	public Repair getRepairByDeclarant(String declarant);//通过申报人查询
	public Repair getRepairById(Integer Id);
		
	public List<Repair> getAllRepair();
	public List<Repair> getRepairByCreate(Date createDate);
	public List<Repair> getRepairByResult(Date resultDate);
	
	public List<Repair> getRepair(Repair repair);

	
	public void addRepair(Repair repair);
	public void deleteRepair(Repair repair);
	public void updateRepair(Repair repair);
	
}
