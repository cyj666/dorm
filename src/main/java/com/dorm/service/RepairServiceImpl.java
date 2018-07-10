package com.dorm.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.RepairMapper;
import com.dorm.pojo.Repair;

@Service
public class RepairServiceImpl implements RepairService {

	@Autowired
	RepairMapper repairMapper;
	
	
	@Override
	public Repair getRepairByRoom(String roomNo) {
		// TODO Auto-generated method stub
		Repair repair = new Repair();
		repair.setRoomNo(roomNo);
		return repairMapper.getRepair(repair).get(0);
	}

	@Override
	public Repair getRepairByDeclarant(String declarant) {
		// TODO Auto-generated method stub
		Repair repair = new Repair();
		repair.setDeclarant(declarant);
		return repairMapper.getRepair(repair).get(0);
	}

	@Override
	public Repair getRepairById(Integer Id) {
		// TODO Auto-generated method stub
		Repair repair = new Repair();
		repair.setId(Id);
		return repairMapper.getRepair(repair).get(0);
	}

	@Override
	public List<Repair> getAllRepair() {
		// TODO Auto-generated method stub
		return repairMapper.getRepair(null);
	}

	@Override
	public List<Repair> getRepairByCreate(Date createDate) {
		// TODO Auto-generated method stub
		Repair repair = new Repair();
		repair.setCreateDate(createDate);
		return repairMapper.getRepair(repair);
	}

	@Override
	public List<Repair> getRepairByResult(Date resultDate) {
		// TODO Auto-generated method stub
		Repair repair = new Repair();
		repair.setResultData(resultDate);
		return repairMapper.getRepair(repair);
	}

	@Override
	public void addRepair(Repair repair) {
		// TODO Auto-generated method stub
		repairMapper.addRepair(repair);
	}

	@Override
	public void deleteRepair(Repair repair) {
		// TODO Auto-generated method stub
		repairMapper.deleteRepair(repair);
	}

	@Override
	public void updateRepair(Repair repair) {
		// TODO Auto-generated method stub
		repairMapper.updateRepair(repair);
	}

	@Override
	public List<Repair> getRepair(Repair repair) {
		// TODO Auto-generated method stub
		return repairMapper.getRepair(repair);
	}

}
