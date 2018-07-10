package com.dorm.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

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
import com.dorm.pojo.WeRate;
import com.dorm.service.WeRateService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;

@Controller
public class WeRateController {

	@Autowired
	WeRateService weRateService;
	
	@RequestMapping(value="rate",method=RequestMethod.GET,produces="text/html;charset=utf-8")
	@ResponseBody
	public String test() {
		List<WeRate> list = weRateService.getWeRatesByRoomNo("610");
		return list.toString();
	}
	
	/*@RequestMapping(value="getAllRates",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String getAllRates(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		WeRate weRate = new WeRate();
		List<WeRate> list = weRateService.getWeRates(weRate);
		PageInfo<WeRate> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}*/
	
	
	@RequestMapping(value="getRates",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	@ResponseBody
	public String getRates(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize,
			@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="date",required=false)String date) {
		PageHelper.startPage(pageNum, pageSize);
		WeRate weRate = new WeRate();
		weRate.setRoomNo(roomNo);
		weRate.setDate(date);
		List<WeRate> list = weRateService.getWeRates(weRate);
		PageInfo<WeRate> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}
	
	@RequestMapping(value="/addRates",produces="application/json;charset=utf-8",method=RequestMethod.POST)
	@ResponseBody
	public String addRepair(@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="date",required=false)String date,
			@RequestParam(value="rate",required=false)Double rate)  throws ParseException{
		WeRate weRate = new WeRate();
		weRate.setRoomNo(roomNo);
		DateTime dateTime = DateUtil.parse(date, "MM/DD/YYYY");
		weRate.setDate(dateTime.toString("YYYY/MM"));
		weRate.setRate(rate);
		weRateService.addRate(weRate);
		String r = "{\"success\":true,\"msg\":\""+"新增水电记录成功！"+"\"}";
		return r;
	}
	
	
	@RequestMapping(value="/updateRates",produces="application/json;charset=utf-8",method=RequestMethod.POST)
	@ResponseBody
	public String updateRate(@RequestParam(value="id",required=false)Integer id,
			@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="date",required=false)String date,
			@RequestParam(value="rate",required=false)Double rate)  throws ParseException{
		WeRate weRate = new WeRate();
		weRate.setRoomNo(roomNo);
		DateTime dateTime = DateUtil.parse(date, "MM/DD/YYYY");
		weRate.setDate(dateTime.toString("YYYY/MM"));
		weRate.setRate(rate);
		weRate.setId(id);
		weRateService.updateRate(weRate);
		String r = "{\"success\":true,\"msg\":\""+"修改水电记录成功！"+"\"}";
		return r;
	}
	
	
	@RequestMapping(value="/deleteRates",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String deleteRate(@RequestParam(value="ids")Integer[] ids)  throws ParseException{
		WeRate weRate = new WeRate();
		for (Integer id : ids) {
			weRate.setId(id);
			weRateService.deleteRate(weRate);
		}
		String r = "{\"success\":true,\"msg\":\""+"删除水电记录成功！"+"\"}";
		return r;
	}
	
	
	
}
