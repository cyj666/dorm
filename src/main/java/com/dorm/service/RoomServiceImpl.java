package com.dorm.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.RoomMapper;
import com.dorm.pojo.Room;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomMapper roomMapper;
	
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
	
	
	

}
