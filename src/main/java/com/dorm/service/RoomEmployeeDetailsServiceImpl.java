package com.dorm.service;

import java.io.InputStream;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.EmployeeMapper;
import com.dorm.mapper.RoomEmployeeDetailsMapper;
import com.dorm.mapper.RoomMapper;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Room;
import com.dorm.pojo.RoomEmployeeDetails;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.NumberUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.sax.handler.RowHandler;

@Service
public class RoomEmployeeDetailsServiceImpl implements RoomEmployeeDetailsService {

	@Autowired
	RoomEmployeeDetailsMapper roomEmployeeDetailsMapper;
	
	@Autowired
	RoomService roomService;
	
	@Autowired
	EmployeeService employeeService;
	
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

	/**
	 * 
	 */
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

	@Override
	public List<RoomEmployeeDetails> getDetailsNow(RoomEmployeeDetails roomEmployeeDetails) {
		// TODO Auto-generated method stub
		return roomEmployeeDetailsMapper.getDetailsNow(roomEmployeeDetails);
	}

	@Override
	public void addHistoryDetails(RoomEmployeeDetails roomEmployeeDetails) {
		// TODO Auto-generated method stub
		roomEmployeeDetailsMapper.addHistoryDetails(roomEmployeeDetails);
	}

	@Override
	public void deleteHistoryDetails(RoomEmployeeDetails roomEmployeeDetails) {
		// TODO Auto-generated method stub
		roomEmployeeDetailsMapper.deleteHistoryDetails(roomEmployeeDetails);
	}

	@Override
	public List<RoomEmployeeDetails> getAllHistoryDetails() {
		// TODO Auto-generated method stub
		return roomEmployeeDetailsMapper.getAllHistoryDetails();
	}

	@Override
	public boolean doExcel(InputStream inputStream) {
		// TODO Auto-generated method stub
		ExcelUtil.read07BySax(inputStream, -1, new RowHandler() {

			@Override
			public void handle(int sheetIndex, int rowIndex, List<Object> rowList) {
				// TODO Auto-generated method stub
				String factoryName = "";
				String roomNo = "";
				Integer building = null;
				Integer unit = null;
				String employeeName1 = "";String employeeNo1 = "";
				String employeeName2 = "";String employeeNo2 = "";
				String employeeName3 = "";String employeeNo3 = "";
				String employeeName4 = "";String employeeNo4 = "";
				Room room = new Room();Employee employee = new Employee();RoomEmployeeDetails details = new RoomEmployeeDetails();
				switch (sheetIndex) {
				case 0:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "华一";
							roomNo = (String) rowList.get(0);
							building = 1;
							unit = 1;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							employeeName2 =  (String) rowList.get(6);
							employeeNo2 = (String) rowList.get(5);
							employeeName3 =  (String) rowList.get(9);
							employeeNo3 = (String) rowList.get(8);
							employeeName4 =  (String) rowList.get(12);
							employeeNo4 = (String) rowList.get(11);
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName2)&&StringUtils.isNotEmpty(employeeNo2)) {
								employee.setEmployeeName(employeeName2);
								employee.setEmployeeNo(employeeNo2);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo2);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo2);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName3)&&StringUtils.isNotEmpty(employeeNo3)) {
								employee.setEmployeeName(employeeName3);
								employee.setEmployeeNo(employeeNo3);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo3);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo3);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName4)&&StringUtils.isNotEmpty(employeeNo4)) {
								employee.setEmployeeName(employeeName4);
								employee.setEmployeeNo(employeeNo4);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo4);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo4);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
						}
					}
					break;
				case 1:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "华一";
							roomNo = (String) rowList.get(0);
							building = 1;
							unit = 2;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							employeeName2 =  (String) rowList.get(6);
							employeeNo2 = (String) rowList.get(5);
							employeeName3 =  (String) rowList.get(9);
							employeeNo3 = (String) rowList.get(8);
							
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName2)&&StringUtils.isNotEmpty(employeeNo2)) {
								employee.setEmployeeName(employeeName2);
								employee.setEmployeeNo(employeeNo2);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo2);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo2);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName3)&&StringUtils.isNotEmpty(employeeNo3)) {
								employee.setEmployeeName(employeeName3);
								employee.setEmployeeNo(employeeNo3);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo3);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo3);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}							
						}
					}
					break;
				case 2:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=2) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "华一";
							roomNo = (String) rowList.get(0);
							building = 1;
							unit = 3;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							employeeName2 =  (String) rowList.get(6);
							employeeNo2 = (String) rowList.get(5);
							employeeName3 =  (String) rowList.get(11);
							employeeNo3 = (String) rowList.get(10);
							employeeName4 =  (String) rowList.get(14);
							employeeNo4 = (String) rowList.get(13);
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
									room = null;
									room = new Room();
								}
							}
							if (StringUtils.isNotEmpty(employeeName2)&&StringUtils.isNotEmpty(employeeNo2)) {
								employee.setEmployeeName(employeeName2);
								employee.setEmployeeNo(employeeNo2);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo2);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo2);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
									room = null;
									room = new Room();
								}
							}
						}
						if (StringUtils.isNotEmpty((String) rowList.get(8))&&
								NumberUtil.isInteger((String) rowList.get(8))) {
							factoryName = "华一";
							roomNo = (String) rowList.get(8);
							building = 1;
							unit = 3;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							employeeName2 =  (String) rowList.get(6);
							employeeNo2 = (String) rowList.get(5);
							employeeName3 =  (String) rowList.get(11);
							employeeNo3 = (String) rowList.get(10);
							employeeName4 =  (String) rowList.get(14);
							employeeNo4 = (String) rowList.get(13);						
							if (StringUtils.isNotEmpty(employeeName3)&&StringUtils.isNotEmpty(employeeNo3)) {
								employee.setEmployeeName(employeeName3);
								employee.setEmployeeNo(employeeNo3);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo3);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo3);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
									room = null;
									room = new Room();
								}
							}	
						
							if (StringUtils.isNotEmpty(employeeName4)&&StringUtils.isNotEmpty(employeeNo4)) {
								employee.setEmployeeName(employeeName4);
								employee.setEmployeeNo(employeeNo4);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo4);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo4);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
									room = null;
									room = new Room();
								}
							}	
						}
					}
					break;
				case 3:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "二分厂";
							roomNo = (String) rowList.get(0);
							building = 7;
							unit = 1;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							employeeName2 =  (String) rowList.get(6);
							employeeNo2 = (String) rowList.get(5);
							employeeName3 =  (String) rowList.get(9);
							employeeNo3 = (String) rowList.get(8);
							employeeName4 =  (String) rowList.get(12);
							employeeNo4 = (String) rowList.get(11);
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName2)&&StringUtils.isNotEmpty(employeeNo2)) {
								employee.setEmployeeName(employeeName2);
								employee.setEmployeeNo(employeeNo2);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo2);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo2);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName3)&&StringUtils.isNotEmpty(employeeNo3)) {
								employee.setEmployeeName(employeeName3);
								employee.setEmployeeNo(employeeNo3);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo3);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo3);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName4)&&StringUtils.isNotEmpty(employeeNo4)) {
								employee.setEmployeeName(employeeName4);
								employee.setEmployeeNo(employeeNo4);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo4);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo4);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
						}
					}
					break;
				case 4:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "二分厂";
							roomNo = (String) rowList.get(0);
							building = 8;
							unit = 1;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							employeeName2 =  (String) rowList.get(6);
							employeeNo2 = (String) rowList.get(5);
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName2)&&StringUtils.isNotEmpty(employeeNo2)) {
								employee.setEmployeeName(employeeName2);
								employee.setEmployeeNo(employeeNo2);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo2);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo2);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							
						}
					}
					break;
				case 5:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "二分厂";
							roomNo = (String) rowList.get(0);
							building = 13;
							unit = 1;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
						
						}
					}
					break;
				case 6:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "二分厂";
							roomNo = (String) rowList.get(0);
							building = 15;
							unit = 1;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							
						}
					}
					break;
				case 7:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "二分厂";
							roomNo = (String) rowList.get(0);
							building = 5;
							unit = 2;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);
							employeeName2 =  (String) rowList.get(6);
							employeeNo2 = (String) rowList.get(5);
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							if (StringUtils.isNotEmpty(employeeName2)&&StringUtils.isNotEmpty(employeeNo2)) {
								employee.setEmployeeName(employeeName2);
								employee.setEmployeeNo(employeeNo2);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo2);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo2);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}							
						}
					}
					break;
				case 8:
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&
								NumberUtil.isInteger((String) rowList.get(0))) {
							factoryName = "华一";
							roomNo = (String) rowList.get(0);
							building = 1;
							unit = 1;
							employeeName1 =  (String) rowList.get(3);
							employeeNo1 = (String) rowList.get(2);							
							if (StringUtils.isNotEmpty(employeeName1)&&StringUtils.isNotEmpty(employeeNo1)) {
								employee.setEmployeeName(employeeName1);
								employee.setEmployeeNo(employeeNo1);
								room.setFactoryName(factoryName);
								room.setRoomNo(roomNo);
								room.setBuilding(building);
								room.setUnit(unit);
								//employee.setEmployeeId(null);
								if(employeeService.getEmployees(employee).size()!=0&&roomService.getRooms(room).size()!=0) {
									employee = employeeService.getEmployeeByNo(employeeNo1);	
									room = roomService.getRooms(room).get(0);
									details.setEmployeeId(employee.getEmployeeId());
									details.setEmployeeNo(employeeNo1);
									details.setRoomId(room.getRoomId());
									details.setRoomNo(roomNo);
									if (roomEmployeeDetailsMapper.getSimpleDetail(details).size()==0) {
										roomEmployeeDetailsMapper.addDetails(details);
									}else {
										System.err.println("记录已存在！");
									}
									employee = null;
									employee = new Employee();
								}
							}
							
						}
					}
					break;
				default:
					break;
				}
			}
			
		});
		
		return true;
	}



}
