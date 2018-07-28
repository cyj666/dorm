package com.dorm.service;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.RoomMapper;
import com.dorm.pojo.Rate;
import com.dorm.pojo.Room;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.NumberUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.sax.handler.RowHandler;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomMapper roomMapper;
	
	@Autowired
	RateService rateService;
	
	@Override
	public Room getRoomById(int roomId) {
		// TODO Auto-generated method stub
		Room room = new Room();
		room.setRoomId(roomId);
		room = roomMapper.getRoom(room);
		return room;
	}

	@Override
	public Room getRoomByRoomNo(String roomNo) {
		// TODO Auto-generated method stub
		Room room = new Room();
		room.setRoomNo(roomNo);
		room = roomMapper.getRoom(room);
		return room;
	}

	@Override
	public List<Room> getRoomByFactoryName(String factoryName) {
		// TODO Auto-generated method stub
		List<Room> rooms = new ArrayList<>();
		Room room = new Room();
		room.setFactoryName(factoryName);
		rooms = roomMapper.getRooms(room);
		return rooms;
	}

	@Override
	public List<Room> getRooms(Room room) {
		// TODO Auto-generated method stub
		List<Room> rooms = roomMapper.getRooms(room);
		return rooms;
	}

	@Override
	public List<Room> getAllRoom() {
		// TODO Auto-generated method stub
		List<Room> rooms = roomMapper.getAllRoom();
		return rooms;
	}

	@Override
	public void addRoom(Room room) {
		// TODO Auto-generated method stub
		roomMapper.addRoom(room);
	}

	@Override
	public void addRoomByList(List<Room> rooms) {
		// TODO Auto-generated method stub
		roomMapper.addRoomByList(rooms);
	}

	@Override
	public void deleteRoom(Room room) {
		// TODO Auto-generated method stub
		roomMapper.deleteRoom(room);
	}

	@Override
	public void deleteroomByList(List<Room> rooms) {
		// TODO Auto-generated method stub
		roomMapper.deleteroomByList(rooms);
	}

	@Override
	public void updateRoom(Room room) {
		// TODO Auto-generated method stub
		roomMapper.updateRoom(room);
	}

	@Override
	public void updateRoomByList(List<Room> rooms) {
		// TODO Auto-generated method stub
		roomMapper.updateRoomByList(rooms);
	}

	@Override
	public List<Room> getAllRoomDetails() {
		// TODO Auto-generated method stub
		return roomMapper.getAllRoomDetails();
	}

	@Override
	public List<String> getFactory() {
		// TODO Auto-generated method stub
		return roomMapper.getFactory();
	}

	@Override
	public List<String> getBuilding(String factory) {
		// TODO Auto-generated method stub
		return roomMapper.getBuilding(factory);
	}

	@Override
	public List<String> getUnit(String factory, String building) {
		// TODO Auto-generated method stub
		return roomMapper.getUnit(factory, building);
	}

	@Override
	public List<String> getFloor(String factory, String building, String unit) {
		// TODO Auto-generated method stub
		return roomMapper.getFloor(factory, building, unit);
	}

	@Override
	public List<Room> getRoomDetails(Room room) {
		// TODO Auto-generated method stub
		return roomMapper.getRoomDetails(room);
	}

	@Override
	public boolean doExcel(InputStream inputStream) {
		// TODO Auto-generated method stub
		ExcelUtil.read07BySax(inputStream, -1, new RowHandler() {
			
			Room room = new Room();
			Rate rate = new Rate();
			String roomNo = "";
			@Override
			public void handle(int sheetIndex, int rowIndex, List<Object> rowList) {
				// TODO Auto-generated method stub
				switch (sheetIndex) {
				case 0:  //宿舍楼一单元住宿一览表
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("华一");
							room.setSize(4);
							room.setBuilding(1);
							room.setUnit(1);
							room.setType("四人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(15));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;
				case 1: //宿舍楼二单元住宿一览表
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("华一");
							room.setSize(4);
							room.setBuilding(1);
							room.setUnit(2);
							room.setType((String) rowList.get(14));
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(15));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;
				case 2://三单元宿舍楼住宿员工名单
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=2) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("华一");
							room.setSize(2);
							room.setBuilding(1);
							room.setUnit(3);
							room.setType("双人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark(null);
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
						if (StringUtils.isNotEmpty((String) rowList.get(8))&&NumberUtil.isInteger((String) rowList.get(8))) {
							roomNo = (String) rowList.get(8);
							room.setRoomNo(roomNo);
							room.setFactoryName("华一");
							room.setSize(2);
							room.setBuilding(1);
							room.setUnit(3);
							room.setType("双人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark(null);
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;
				case 3://二分厂夫妻宿舍员工名单
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("二分厂");
							room.setSize(2);
							room.setBuilding(7);
							room.setUnit(1);
							room.setType((String) rowList.get(14));
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(15));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;
				case 4://二分厂大学生住宿名单
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("二分厂");
							room.setSize(2);
							room.setBuilding(8);
							room.setUnit(1);
							room.setType("双人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(15));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;
				case 5://三鼎13栋公寓楼
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("二分厂");
							room.setSize(1);
							room.setBuilding(13);
							room.setUnit(1);
							room.setType("单人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(6));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;
				case 6://三鼎15栋公寓楼
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("二分厂");
							room.setSize(1);
							room.setBuilding(15);
							room.setUnit(1);
							room.setType("单人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(7));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;
				case 7://三鼎5栋二单元公寓楼13间
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("二分厂");
							room.setSize(2);
							room.setBuilding(5);
							room.setUnit(2);
							room.setType("双人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(9));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
							}
						}
					}
					break;	
				case 8://三鼎5栋一单元公寓楼7间
					System.out.println(sheetIndex+":"+rowIndex+":"+rowList.toString());
					if (StringUtils.isEmpty((String) rowList.get(0))) {
						break;
					}
					if (rowIndex>=3) { 
						if (StringUtils.isNotEmpty((String) rowList.get(0))&&NumberUtil.isInteger((String) rowList.get(0))) {
							roomNo = (String) rowList.get(0);
							room.setRoomNo(roomNo);
							room.setFactoryName("二分厂");
							room.setSize(1);
							room.setBuilding(5);
							room.setUnit(1);
							room.setType("单人间");
							room.setFloor(Integer.parseInt(roomNo.substring(0, 1)));
							room.setRemark((String) rowList.get(6));
							room.setRoomId(null);
							if (getRooms(room).size()==0) {
								addRoom(room);
								rate.setYear(DateUtil.year(new Date()));
								room = getRooms(room).get(0);
								rate.setRoomId(room.getRoomId());
								if (rateService.getRates(rate).size()==0) { //自动与费用表关联
									rateService.addRate(rate);	
									System.out.println("添加成功！");
								}							
								
							}else {
								System.out.println("添加失败！");
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
