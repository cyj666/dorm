package com.dorm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Room;
import com.dorm.service.RoomService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class RoomController {
	
	@Autowired
	RoomService roomService;
	
	@RequestMapping(value="/getAllRoom",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getAllRoom(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {				
		PageHelper.startPage(pageNum, pageSize);
		List<Room> rooms = roomService.getAllRoom();
		PageInfo<Room> p = new PageInfo<>(rooms);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}
	
	@RequestMapping(value="/getRooms",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getRooms(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize,
			@RequestParam(value="factoryName",required=false)String factoryName,
			@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="roomAdmin",required=false)String roomAdmin,
			@RequestParam(value="size",required=false)Integer size) {		
		Room room = new Room();
		room.setFactoryName(factoryName);
		room.setRoomNo(roomNo);
		room.setRoomAdmin(roomAdmin);
		room.setSize(size);
		PageHelper.startPage(pageNum, pageSize);		
		List<Room> rooms = roomService.getRooms(room);
		PageInfo<Room> p = new PageInfo<>(rooms);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}
	
	
	@RequestMapping(value="/addRoom",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addRoom(@RequestParam(value="factoryName")String factoryName,
			@RequestParam(value="building")Integer building,
			@RequestParam(value="unit")Integer unit,
			@RequestParam(value="floor")Integer floor,
			@RequestParam(value="roomNo")String roomNo,
			@RequestParam(value="roomAdmin")String roomAdmin,
			@RequestParam(value="size")Integer size,
			@RequestParam(value="type")String type,
			@RequestParam(value="remark")String remark) {
		Room room = new Room();
		room.setFactoryName(factoryName);
		room.setBuilding(building);
		room.setUnit(unit);
		room.setFloor(floor);
		room.setRoomNo(roomNo);
		room.setRoomAdmin(roomAdmin);
		room.setSize(size);
		room.setType(type);
		room.setRemark(remark);
		roomService.addRoom(room);
		String result = "{\"success\":true,\"msg\":\"添加成功！\"}";
		return result;
	}
	
	@RequestMapping(value="/updateRoom",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateRoom(
			@RequestParam(value="roomId")Integer roomId,
			@RequestParam(value="factoryName")String factoryName,
			@RequestParam(value="building")Integer building,
			@RequestParam(value="unit")Integer unit,
			@RequestParam(value="floor")Integer floor,
			@RequestParam(value="roomNo")String roomNo,
			@RequestParam(value="roomAdmin")String roomAdmin,
			@RequestParam(value="size")Integer size,
			@RequestParam(value="type")String type,
			@RequestParam(value="remark")String remark) {
		Room room = new Room();
		room.setRoomId(roomId);
		room.setFactoryName(factoryName);
		room.setBuilding(building);
		room.setUnit(unit);
		room.setFloor(floor);
		room.setRoomNo(roomNo);
		room.setRoomAdmin(roomAdmin);
		room.setSize(size);
		room.setType(type);
		room.setRemark(remark);
		roomService.updateRoom(room);
		String result = "{\"success\":true,\"msg\":\"修改成功！\"}";
		return result;
	}
	
	

	@RequestMapping(value="/deleteRoom",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteRoom(@RequestParam(value="ids")Integer[] ids) {
		List<Room> rooms = new ArrayList<>();
		for (Integer i : ids) {
			Room room = new Room();
			room.setRoomId(i);
			roomService.deleteRoom(room);
		}
		String result = "{\"success\":true,\"msg\":\"删除成功！\"}";
		return result;
	}
	
	
}
