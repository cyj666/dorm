package com.dorm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.dorm.pojo.Role;
import com.dorm.service.RoleService;

@Controller
public class RoleController {
	
	@Autowired
	RoleService roleService;
	
	@RequestMapping(value="getRoles",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getRoles() {
		List<Role> roles = roleService.getAllRole();
		StringBuffer sb = new StringBuffer();
		sb.append("[");
		for (Role role : roles) {
			sb.append("{\"id\":"+role.getRoleId()+",");
			sb.append("\"text\":\""+role.getRoleName()+"\"},");
		}
		sb.replace(sb.length()-1, sb.length(), "]");
		String json = JSON.toJSONString(roles);
		return sb.toString();
	}
	
}
