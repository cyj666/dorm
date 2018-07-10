package com.dorm.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Network;
import com.dorm.pojo.Repair;
import com.dorm.pojo.RoomEmployeeDetails;
import com.dorm.service.EmployeeService;
import com.dorm.service.NetworkService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.hutool.core.date.DateUtil;

@Controller
public class NetworkController {

	@Autowired
	NetworkService networkService;
	
	@Autowired
	EmployeeService employeeService;
	
	
	@RequestMapping(value="/getAllNet",method=RequestMethod.GET,produces="text/html;charset=utf-8")
	@ResponseBody
	public String getAllNet(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<Network> list = networkService.getAllNetwork();
		PageInfo<Network> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
		//return networkService.getAllNetwork().toString();
	}
	
	@RequestMapping(value="/getNet",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getNet(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize,
			@RequestParam(value="employeeName",required=false)String employeeName,
			@RequestParam(value="mac",required=false)String mac,
			@RequestParam(value="ip",required=false)String ip,
			@RequestParam(value="start",required=false)String start)  throws ParseException{
		PageHelper.startPage(pageNum, pageSize);
		Network network = new Network();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	
		network.setStart(start==null||start.equals("")?null:sdf.parse(start));
		network.setMac(mac);
		network.setIp(ip);
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		network.setEmployee(employee);
		List<Network> list = networkService.getNetWork(network);
		PageInfo<Network> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}
	
	@RequestMapping(value="/addNet",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String addRepair(@RequestParam(value="employeeName",required=false)String employeeName,
			@RequestParam(value="mac",required=false)String mac,
			@RequestParam(value="ip",required=false)String ip,
			@RequestParam(value="start",required=false)String start,
			@RequestParam(value="end",required=false)String end)  throws ParseException{
		Network network = new Network();
		network.setMac(mac);
		network.setIp(ip);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	
		network.setStart(start==null||start.equals("")?null:sdf.parse(start));
		network.setEnd(end==null||end.equals("")?null:sdf.parse(end));
		Employee employee = employeeService.getEmployeeByName(employeeName);
		network.setEmployee(employee);
		network.setContinued((int)DateUtil.betweenMonth(DateUtil.parseDate(start), DateUtil.parseDate(end), false));
		if (networkService.getNetWork(network).get(0)!=null) {
			return "{\"success\":false,\"msg\":\""+"该记录已存在！"+"\"}";
		}
		networkService.addNetwork(network, employee);
		String r = "{\"success\":true,\"msg\":\""+"新增网络记录成功！"+"\"}";
		return r;
	}
	
	@RequestMapping(value="/updateNet",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String updateNet(@RequestParam(value="id",required=false)Integer id
			,@RequestParam(value="employeeName",required=false)String employeeName,
			@RequestParam(value="mac",required=false)String mac,
			@RequestParam(value="ip",required=false)String ip,
			@RequestParam(value="start",required=false)String start,
			@RequestParam(value="end",required=false)String end)  throws ParseException{
		Network network = new Network();
		network.setMac(mac);
		network.setIp(ip);
		network.setId(id);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	
		network.setStart(start==null||start.equals("")?null:sdf.parse(start));
		network.setEnd(end==null||end.equals("")?null:sdf.parse(end));
		Employee employee = employeeService.getEmployeeByName(employeeName);
		network.setEmployee(employee);
		network.setContinued((int)DateUtil.betweenMonth(DateUtil.parseDate(start), DateUtil.parseDate(end), false));
		//network = networkService.getNetWork(network).get(0);  
		networkService.updateNetwork(network, employee);
		String r = "{\"success\":true,\"msg\":\""+"修改维修单成功！"+"\"}";
		return r;
	}
	
	
	@RequestMapping(value="/deleteNet",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String deleteNet(@RequestParam(value="ids")Integer[] ids)  throws ParseException{
		for (Integer i : ids) {
			Network network = new Network();
			network.setId(i);			
			networkService.deleteNetwork(network);
			
		}
		String result = "{\"success\":true,\"msg\":\"删除成功！\"}";
		return result;
	}
	
	@Test
	public void test() {
		System.out.println(DateUtil.betweenMonth(DateUtil.parseDate("2018-04-25"), DateUtil.parseDate("2018-10-25"), false));
	}
}
