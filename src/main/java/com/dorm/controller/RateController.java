package com.dorm.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Rate;
import com.dorm.pojo.Room;
import com.dorm.service.RateService;
import com.dorm.service.RoomService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.hutool.core.date.DateUtil;

@Controller
public class RateController {

	@Autowired
	RateService rateService;
	
	@Autowired
	RoomService roomService;
	
	@RequestMapping(value="/getAllRates",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getAllRates(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Rate weRate = new Rate();
		List<Rate> list = rateService.getAllRates();
		PageInfo<Rate> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}
	
	@RequestMapping(value="/addRate",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String addRate(@RequestParam(value="roomId")Integer roomId,@RequestParam(value="year")Integer year,
			@RequestParam(value="jan",required=false)Double jan,@RequestParam(value="feb",required=false)Double feb,
			@RequestParam(value="mar",required=false)Double mar,@RequestParam(value="apr",required=false)Double apr,
			@RequestParam(value="may",required=false)Double may,@RequestParam(value="jun",required=false)Double jun,
			@RequestParam(value="jul",required=false)Double jul,@RequestParam(value="aug",required=false)Double aug,
			@RequestParam(value="sep",required=false)Double sep,@RequestParam(value="oct",required=false)Double oct,
			@RequestParam(value="nov",required=false)Double nov,@RequestParam(value="dec",required=false)Double dec) {
		Rate rate = new Rate(roomId, year, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);		
		rateService.addRate(rate);
		String r = "{\"success\":true,\"msg\":\""+"新增记录成功！"+"\"}";
		return r;
	}
	
	/*自动定时任务*/
	@Scheduled(cron="0 0 0 1 1 ? *")
	public void autoAddRateNewYear() {
		List<Room> rooms = roomService.getAllRoom();
		Rate rate = new Rate();
		for (Room room : rooms) {
			rate.setRoomId(room.getRoomId());
			List<Rate> rates = rateService.getRates(rate);
			for (Rate r : rates) {
				if (r.getYear()!=null&&r.getYear()==DateUtil.year(DateUtil.date())) {
					continue;
				}else {
					rate.setYear(DateUtil.year(DateUtil.date()));
					rateService.addRate(rate);
				}
			}
		}
	}
	/*@Scheduled(cron="* * * * * ?")
	public void autoAddRateNewYear() {
		System.out.println(DateUtil.now());
	}*/
	
	
	@RequestMapping(value="/updateRate",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String updateRate(@RequestParam(value="id")Integer id,
			@RequestParam(value="roomId")Integer roomId,@RequestParam(value="year")Integer year,
			@RequestParam(value="jan",required=false)Double jan,@RequestParam(value="feb",required=false)Double feb,
			@RequestParam(value="mar",required=false)Double mar,@RequestParam(value="apr",required=false)Double apr,
			@RequestParam(value="may",required=false)Double may,@RequestParam(value="jun",required=false)Double jun,
			@RequestParam(value="jul",required=false)Double jul,@RequestParam(value="aug",required=false)Double aug,
			@RequestParam(value="sep",required=false)Double sep,@RequestParam(value="oct",required=false)Double oct,
			@RequestParam(value="nov",required=false)Double nov,@RequestParam(value="dec",required=false)Double dec) {
		Rate rate = new Rate(id,roomId, year, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);	
		rateService.updateRate(rate);
		String r = "{\"success\":true,\"msg\":\""+"修改记录成功！"+"\"}";
		return r;
	}
	

	@RequestMapping(value="/deleteRate",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String deleteRate(@RequestParam(value="ids")Integer[] ids) {
		Rate rate = new Rate();
		for (Integer id : ids) {
			rate.setId(id);
			rateService.deleteRate(rate);
		}
		String r = "{\"success\":true,\"msg\":\""+"删除记录成功！"+"\"}";
		return r;
	}
	
	
}
