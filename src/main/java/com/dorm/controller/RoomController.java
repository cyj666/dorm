package com.dorm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Room;
import com.dorm.pojo.RoomEmployeeDetails;
import com.dorm.service.RoomEmployeeDetailsService;
import com.dorm.service.RoomService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.hutool.core.date.DateUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;

@Controller
public class RoomController {
	
	@Autowired
	RoomService roomService;
	
	@Autowired
	RoomEmployeeDetailsService detailsService;
	
	@RequestMapping(value="/getAllRoom",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getAllRoom(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {				
		PageHelper.startPage(pageNum, pageSize);
		List<Room> rooms = roomService.getAllRoomDetails();
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
			@RequestParam(value="building",required=false)Integer building,
			@RequestParam(value="unit",required=false)Integer unit,
			@RequestParam(value="floor",required=false)Integer floor,
			@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="roomAdmin",required=false)String roomAdmin,
			@RequestParam(value="size",required=false)Integer size,
			@RequestParam(value="roomStatus",required=false)Integer roomStatus) {		
		Room room = new Room();
		room.setFactoryName(factoryName);
		room.setBuilding(building);
		room.setUnit(unit);
		room.setFloor(floor);
		room.setRoomNo(roomNo);
		room.setRoomAdmin(roomAdmin);
		room.setSize(size);
		room.setRoomStatus(roomStatus);
		List<Room> test  = roomService.getRoomDetails(room);
		for (Employee e : test.get(0).getEmployees()) {
			System.err.println(e);
		}
		PageHelper.startPage(pageNum, pageSize);		
		//List<Room> rooms = roomService.getRooms(room);  //先前的版本
		List<Room> rooms = roomService.getRoomDetails(room);
		
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
			@RequestParam(value="remark")String remark,
			@RequestParam(value="roomStatus")Integer roomStatus) {
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
		room.setRoomStatus(roomStatus);
		roomService.addRoom(room);
		String result = "{\"success\":true,\"msg\":\"添加成功！\"}";
		return result;
	}
	
	@RequestMapping(value="/updateRoom",produces="application/json;charset=utf-8",method=RequestMethod.POST)
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
			@RequestParam(value="remark")String remark,
			@RequestParam(value="roomStatus")Integer roomStatus) {
		
		Room room = roomService.getRoomById(roomId);
		
		/*在更新房间信息的同时，也要更新住宿登记表中的房间信息，比如房间号*/
		/*暂且不用了*/
		/*RoomEmployeeDetails details = new RoomEmployeeDetails();
		details.setRoomNo(room.getRoomNo());
		for (RoomEmployeeDetails d : detailsService.getDetailsByRoomNo(room.getRoomNo())) {
			d.setRoomNo(roomNo);
			detailsService.updateRoom(d);
		} */
				
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
		room.setRoomStatus(roomStatus);
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
	
	
	/**
	 * 针对级联
	 * @return
	 */
	@RequestMapping(value="/getFactory",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getFactory() {
		List<String> factroys = roomService.getFactory();
		StringBuffer sb = new StringBuffer();
		sb.append("[{");
		if (factroys.size()==0) {
			sb.append("}]");
			return sb.toString();
		}
		for (String f : factroys) {
			sb.append("\"id\":"+(factroys.indexOf(f)+1)+",");
			sb.append("\"text\":"+"\""+f+"\""+"}");
			if (factroys.indexOf(f)!=factroys.size()-1) {
				sb.append(",{");
			}
		}
		sb.append("]");
		return sb.toString();
	}
	
	/**
	 * 针对级联
	 * @param factory
	 * @return
	 */
	@RequestMapping(value="/getBuilding",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getBuilding(@RequestParam(value="factory")String factory) {
		List<String> buildings = roomService.getBuilding(factory);
		StringBuffer sb = new StringBuffer();
		sb.append("[{");
		if (buildings.size()==0) {
			sb.append("}]");
			return sb.toString();
		}
		for (String b : buildings) {
			sb.append("\"id\":"+(buildings.indexOf(b)+1)+",");
			sb.append("\"text\":"+"\""+b+"\""+"}");
			if (buildings.indexOf(b)!=buildings.size()-1) {
				sb.append(",{");
			}
		}
		sb.append("]");
		return sb.toString();
	}
	
	/**
	 * 针对级联
	 * @param factory
	 * @param building
	 * @return
	 */
	@RequestMapping(value="/getUnit",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getUnit(@RequestParam(value="factory")String factory,@RequestParam(value="building")String building) {
		List<String> units = roomService.getUnit(factory, building);
		StringBuffer sb = new StringBuffer();
		sb.append("[{");
		if (units.size()==0) {
			sb.append("}]");
			return sb.toString();
		}
		for (String u : units) {
			sb.append("\"id\":"+(units.indexOf(u)+1)+",");
			sb.append("\"text\":"+"\""+u+"\""+"}");
			if (units.indexOf(u)!=units.size()-1) {
				sb.append(",{");
			}
		}
		sb.append("]");
		return sb.toString();
	}
	
	/**
	 * 针对级联
	 * @param factory
	 * @param building
	 * @param unit
	 * @return
	 */
	@RequestMapping(value="/getFloor",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getFloor(@RequestParam(value="factory")String factory,
			@RequestParam(value="building")String building,
			@RequestParam(value="unit")String unit) {
		List<String> floors = roomService.getFloor(factory, building, unit);
		StringBuffer sb = new StringBuffer();
		sb.append("[{");
		if (floors.size()==0) {
			sb.append("}]");
			return sb.toString();
		}
		for (String f : floors) {
			sb.append("\"id\":"+(floors.indexOf(f)+1)+",");
			sb.append("\"text\":"+"\""+f+"\""+"}");
			if (floors.indexOf(f)!=floors.size()-1) {
				sb.append(",{");
			}
		}
		sb.append("]");
		return sb.toString();
	}
	
	
	/**
	 * 针对级联
	 * @param factory
	 * @param building
	 * @param unit
	 * @return
	 */
	@RequestMapping(value="/getRoom",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getRoom(@RequestParam(value="factory")String factory,
			@RequestParam(value="building")Integer building,
			@RequestParam(value="unit")Integer unit,
			@RequestParam(value="floor")Integer floor) {
		Room room = new Room();
		room.setFactoryName(factory);
		room.setBuilding(building);
		room.setUnit(unit);
		room.setFloor(floor);
		List<Room> rooms = roomService.getRooms(room);
		List<String> rList = new ArrayList<>();
		StringBuffer sb = new StringBuffer();
		sb.append("[{");
		if (rooms.size()==0) {
			sb.append("}]");
			return sb.toString();
		}
		for (Room r : rooms) {
			rList.add(r.getRoomNo());
		}
		for (String r : rList) {
			sb.append("\"id\":"+(rList.indexOf(r)+1)+",");
			sb.append("\"text\":"+"\""+r+"\""+"}");
			if (rList.indexOf(r)!=rList.size()-1) {
				sb.append(",{");
			}
		}
		sb.append("]");
		return sb.toString();
	}
	
	@RequestMapping(value="/putExcel2",method= {RequestMethod.POST},produces="application/json;charset=utf-8")
	@ResponseBody
	public String putExcel(HttpServletRequest request,HttpServletResponse response,
			@RequestParam(value="excel")CommonsMultipartFile excel) throws IOException {
		
		JSONObject job = JSONUtil.createObj();
		if(roomService.doExcel(excel.getInputStream())) {
			job.put("success", Boolean.TRUE);
			return job.toString();
		}else {
		job.put("success", Boolean.FALSE);
		return job.toString();
		}
	}
		
	@RequestMapping(value="/printExcel2",method= {RequestMethod.POST,RequestMethod.GET})
	public void printExcel(HttpServletRequest request,HttpServletResponse response) throws IOException {
		ServletOutputStream out = response.getOutputStream(); 
		String downloadFielName = new String((DateUtil.now()+".xlsx").getBytes("UTF-8"),"UTF-8");
		//response为HttpServletResponse对象
		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
		//test.xlsx是弹出下载对话框的文件名，不能为中文，中文请自行编码
		response.setHeader("Content-Disposition","attachment;filename=test.xlsx");
		 List<Room> rooms = roomService.getAllRoomDetails(); 
		 //List<Employee> rows = CollUtil.newArrayList(employees);
		 ExcelWriter writer = ExcelUtil.getWriter(true);
		 writer.write(rooms);
		 writer.flush(out);
		 writer.close();    
	}
	
	
}
