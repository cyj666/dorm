package com.dorm.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Room;
import com.dorm.pojo.RoomEmployeeDetails;
import com.dorm.pojo.User;
import com.dorm.service.EmployeeService;
import com.dorm.service.RoomEmployeeDetailsService;
import com.dorm.service.RoomService;
import com.dorm.service.UserService;

@Controller
public class BaseController {

	@Autowired
	UserService userService;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	RoomService roomService;
	
	@Autowired
	RoomEmployeeDetailsService roomEmployeeDetailsService;
	
	@RequestMapping("/test")
	@ResponseBody
	public String test() {
		return "hello world"; 
	}
	
	
	@RequestMapping("/getUser")
	@ResponseBody
	public String getUser(@RequestParam(value="id",defaultValue="1")int id,
			@RequestParam(value="username",defaultValue="admin")String username) {
		User user = userService.getUserById(id);
		
		return user.toString();
		
	}
	
	/*@RequestMapping(value="/getEmployee",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getEmployee(/*@RequestParam(value="employeeId",defaultValue="1")int employeeId) {
		/*List<Employee> employees = new ArrayList<>();
		employees = employeeService.getAllEmployee();
		for(int i=0;i<employees.size();i++) {
			Employee employee = employees.get(i);
			employee.setEmployeeSex("女");
			employees.set(i, employee);
		}
		employeeService.updateUserByList(employees);
		employees = employeeService.getAllEmployee();*/
		/*List<Employee> employees = new ArrayList<>();
		for(int i=0;i<1;i++) {
			Employee employee = new Employee();
			employee.setEmployeeId(6);
			employee.setEmployeeName("王五");
			employee.setEmployeeNo("H17078");
			employee.setEmployeeSex("男");
			employee.setEmployeeWorkplace("华三");
			employee.setEmployeeJob("电工");
			employee.setEmployeeFamily("2个小孩");
			employees.add(employee);
		}
		employeeService.deleteEmployeeByList(employees);
		employees = employeeService.getAllEmployee();*/
		/*List<Employee> employees = new ArrayList<>();
		String[] employeeNames = {"张三","李四"};
		employees = employeeService.getEmployeeByNameArray(employeeNames);
		return "员工信息："+employees.toString();
		
	}*/
	
	
	
	
	@RequestMapping(value="/getDetils",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getDetils() {
		RoomEmployeeDetails details = new RoomEmployeeDetails();
		details.setRoomNo("610");
		List<RoomEmployeeDetails> list = roomEmployeeDetailsService.getDetails(details);
		for (RoomEmployeeDetails roomEmployeeDetails : list) {
			roomEmployeeDetails.setRoomNo("611");
			roomEmployeeDetailsService.updateRoom(roomEmployeeDetails);
			list = roomEmployeeDetailsService.getDetails(details);
		}
		
		return list.toString();
		
	}
	
	@RequestMapping("/{active}")
	public String getUrl(@PathVariable String active) {
		return active;
	}
	
	@RequestMapping("main")
	public String getUrl2() {
		return "/system/main";
	}
	
	@RequestMapping(value="BaseController.do",method=RequestMethod.GET)
	public String getUrl4(@RequestParam(value="url")String url) {
		
		return "/system/"+url;
	}
	
	@RequestMapping(value="buss",method=RequestMethod.GET)
	public String getUrl5(@RequestParam(value="url")String url) {
		
		return "/buss/"+url;
	}
		
	
	
	
	@RequestMapping(value="saveUser",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String saveUser(@RequestParam(value="username")String username,
			@RequestParam(value="password")String password,
			@RequestParam(value="password2")String password2,
			@RequestParam(value="status")Integer status) {
		User user = new User();
		String result;
		if (!password.equals(password2)) {			
			result = "{\"success\":false,\"msg\":\"两次密码不一致\"}";
			return result;
		}		
		user.setUsername(username);
		user.setPassword(password);
		user.setCreateTime(new Date());
		user.setLocked(false);
		user.setStatus(status);
		userService.addUser(user);
		result = "{\"success\":true,\"msg\":\"添加成功\"}";
		return result;
	}
	
	@RequestMapping(value="deleteUser",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteUser(@RequestParam(value="username")String username,
			@RequestParam(value="password")String password,			
			@RequestParam(value="status")Integer status) {
		User user = new User();
		String result;	
		user.setUsername(username);
		user.setPassword(password);
		user.setCreateTime(new Date());
		user.setLocked(false);
		user.setStatus(status);
		userService.addUser(user);
		result = "{\"success\":true,\"msg\":\"添加成功\"}";
		return result;
	}
	
	
	
}
