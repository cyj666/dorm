package com.dorm.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Repair;
import com.dorm.pojo.RoomEmployeeDetails;
import com.dorm.service.RepairService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class RepairController {

	@Autowired
	RepairService repairService;
	
	@RequestMapping(value="/getAllRepair",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getAllRepair(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<Repair> list =  repairService.getAllRepair();
		PageInfo<Repair> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}
	
	@RequestMapping(value="/getRepair",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getRepair(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize,
			@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="declarant",required=false)String declarant,
			@RequestParam(value="createDate",required=false)String createDate,
			@RequestParam(value="resultDate",required=false)String resultDate)  throws ParseException{
		PageHelper.startPage(pageNum, pageSize);
		Repair repair = new Repair();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	
		repair.setCreateDate(createDate==null||createDate.equals("")?null:sdf.parse(createDate));
		repair.setResultData(resultDate==null||resultDate.equals("")?null:sdf.parse(resultDate));
		repair.setRoomNo(roomNo);
		repair.setDeclarant(declarant);
		List<Repair> list = repairService.getRepair(repair);
		PageInfo<Repair> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
	}
	
	
	@RequestMapping(value="/addRepair",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String addRepair(@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="declarant",required=false)String declarant,
			@RequestParam(value="reason",required=false)String reason,
			@RequestParam(value="remark",required=false)String remark,
			@RequestParam(value="result",required=false)String result,
			@RequestParam(value="repairman",required=false)String repairman,
			@RequestParam(value="createDate",required=false)String createDate,
			@RequestParam(value="resultDate",required=false)String resultDate)  throws ParseException{
		Repair repair = new Repair();
		repair.setRoomNo(roomNo);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	
		repair.setCreateDate(createDate==null||createDate.equals("")?null:sdf.parse(createDate));
		repair.setResultData(resultDate==null||resultDate.equals("")?null:sdf.parse(resultDate));
		repair.setDeclarant(declarant);
		repair.setReason(reason);
		repair.setRemark(remark);
		repair.setRepairman(repairman);
		repair.setResult(result);
		repairService.addRepair(repair);
		String r = "{\"success\":true,\"msg\":\""+"新增维修单成功！"+"\"}";
		return r;
	}
	
	@RequestMapping(value="/updateRepair",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String updateRepair(@RequestParam(value="id",required=false)Integer id,
			@RequestParam(value="roomNo",required=false)String roomNo,
			@RequestParam(value="declarant",required=false)String declarant,
			@RequestParam(value="reason",required=false)String reason,
			@RequestParam(value="remark",required=false)String remark,
			@RequestParam(value="result",required=false)String result,
			@RequestParam(value="repairman",required=false)String repairman,
			@RequestParam(value="createDate",required=false)String createDate,
			@RequestParam(value="resultDate",required=false)String resultDate)  throws ParseException{
		Repair repair = new Repair();
		repair.setId(id);
		repair.setRoomNo(roomNo);
		repair = repairService.getRepair(repair).get(0);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");	
		repair.setCreateDate(createDate==null||createDate.equals("")?null:sdf.parse(createDate));
		repair.setResultData(resultDate==null||resultDate.equals("")?null:sdf.parse(resultDate));
		repair.setDeclarant(declarant);
		repair.setReason(reason);
		repair.setResult(result);
		repair.setRemark(remark);
		repair.setRepairman(repairman);
		repairService.updateRepair(repair);
		String r = "{\"success\":true,\"msg\":\""+"处理维修单成功！"+"\"}";
		return r;
	}
	
	
	@RequestMapping(value="/deleteRepair",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String updateRepair(@RequestParam(value="ids")Integer[] ids)  throws ParseException{
		for (Integer i : ids) {
			Repair repair = new Repair();
			repair.setId(i);
			repairService.deleteRepair(repair); 
			
		}
		String result = "{\"success\":true,\"msg\":\"删除成功！\"}";
		return result;
	}
}
