package com.dorm.mapper;

import java.util.List;

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
}
