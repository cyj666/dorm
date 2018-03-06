package com.dorm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.User;
import com.dorm.service.UserService;

@Controller
public class UserController {
	
	
	@Autowired
	UserService userService;
	
	
	@RequestMapping(value="getAllUser",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	@ResponseBody
	public String getAllUser() {
		//User user = userService.getUserById(1);
		List<User> list = userService.getAllUser();		
		String json = JSON.toJSONString(list,SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+list.size()+",\"rows\":"+json+"}";
		return JSON;
	}

}
