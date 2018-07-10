package com.dorm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dorm.pojo.Room;

public interface RoomMapper {

	public Room getRoom(Room room);
	public List<Room> getRoomByIdList(List<Room> roomId);
	public List<Room> getRooms(Room room);
	public List<Room> getAllRoom();
	public List<Room> getAllRoomDetails();
	
	public void addRoom(Room room);
	public void addRoomByList(List<Room> rooms);
	
	public void deleteRoom(Room room);
	public void deleteroomByList(List<Room> rooms);
	
	public void updateRoom(Room room);
	public void updateRoomByList(List<Room> rooms);
	
	public List<String> getFactory();
	public List<String> getBuilding(@Param("factory")String factory);
	public List<String> getUnit(@Param("factory")String factory,@Param("building")String building);
	public List<String> getFloor(@Param("factory")String factory,
			@Param("building")String building,@Param("unit")String unit);
	
	public List<Room> getRoomDetails(Room room);  //根据房间的属性查询员工信息
}
