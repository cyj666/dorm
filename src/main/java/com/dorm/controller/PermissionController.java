package com.dorm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.dorm.pojo.Permission;
import com.dorm.pojo.Role;
import com.dorm.service.PermissionService;
import com.dorm.service.UserService;

@Controller
public class PermissionController {

	@Autowired
	PermissionService permissionService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/getSimplePermissions",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getSimplePermissions() {		
		List<Permission> permissions = permissionService.getAllpermission();
		StringBuffer sb = new StringBuffer();
		sb.append("[");
		for (Permission permission : permissions) {
			sb.append("{\"id\":"+permission.getPermissionId()+",");
			sb.append("\"text\":\""+permission.getPermissionName()+"\"},");
		}
		sb.replace(sb.length()-1, sb.length(), "]");		
		return sb.toString();
	}
	
	@RequestMapping(value="getPermissions",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getPermissions() {
		List<Permission> permissions = permissionService.getAllpermission();		
		String json = JSON.toJSONString(permissions);
		return json;
	}
	
	
	@RequestMapping(value="addPermission",produces="application/json;charset=utf-8")
	@ResponseBody
	public String addPermission(@RequestParam(value="permissionName")String permissionName,
			@RequestParam(value="permissionDesc")String permissionDesc) {
		String result = null;
		if (permissionName==null||permissionName.equals("")) {
			result = "{\"success\":false,\"msg\":\"添加失败，权限名不能为空！\"}";
			return result;
		}
		Permission permission = new Permission();
		permission.setPermissionName(permissionName);
		permission.setPermissionDesc(permissionDesc);
		permissionService.addpermission(permission);
		result = "{\"success\":true,\"msg\":\"添加成功！\"}";
		return result;
	}
	
	@RequestMapping(value="deletePermission",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deletePermission(@RequestParam(value="ids")Integer[] ids) {
		String result = null;
		Permission permission;
		for (Integer id : ids) {
			permission = new Permission();
			permission.setPermissionId(id);
			permissionService.deletepermission(permission);
			userService.deleteRolePermision(null, id);
			permission = null;
		}	
		return result;
	}
	
	
}
