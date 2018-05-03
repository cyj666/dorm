package com.dorm.service;

import java.util.List;

import com.dorm.pojo.Room;

public interface RoomService {
	
	public Room getRoomById(int roomId);
	public Room getRoomByRoomNo(String roomNo);
	public List<Room> getRoomByFactoryName(String factoryName);	
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
