package com.dorm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.dorm.pojo.Role;
import com.dorm.service.RoleService;
import com.dorm.service.UserService;

@Controller
public class RoleController {
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
	
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
		return sb.toString();
	}
	
	@RequestMapping(value="getRolesDetails",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getRolesDetails() {
		List<Role> roles = roleService.getAllRoleDetails();		
		String json = JSON.toJSONString(roles);
		return json;
	}
	
	@RequestMapping(value="addRole",produces="application/json;charset=utf-8",method=RequestMethod.POST)
	@ResponseBody
	public String addRole(@RequestParam(value="roleName")String roleName,
			@RequestParam(value="roleDesc")String roleDesc,
			@RequestParam(value="permissionId")Integer[] permissionIds) {
		String result = null;
		if (roleName==null||roleName.equals("")) {
			result = "{\"success\":false,\"msg\":\"添加失败，角色名不能为空！\"}";
			return result;
		}
		if (permissionIds.length==0) {
			result = "{\"success\":false,\"msg\":\"添加失败，请至少选择一个权限！\"}";
			return result;
		}
		Role role = new Role();
		role = roleService.getRoleByName(roleName);
		if (role!=null) {   //判断数据库中是否有相同的角色
			result = "{\"success\":false,\"msg\":\"添加失败，该角色名已存在！\"}";
			return result;
		}else {
			//防止空指针
			role = new Role();
		}		
		role.setRoleName(roleName);
		role.setRoleDesc(roleDesc);
		roleService.addRole(role);  //添加到数据库
		
		
		role = roleService.getRole(role);
		if (role!=null) {
			//循环添加
			for (Integer permissionId : permissionIds) {
				userService.addRolePermision(role.getRoleId(), permissionId);
			}
		}else {
			result = "{\"success\":false,\"msg\":\"出现异常！\"}";
			return result;
		}
		result = "{\"success\":true,\"msg\":\"添加成功\"}";
		return result;
	}
	
	
	@RequestMapping(value="updateRole",produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateRole(@RequestParam(value="roleName")String roleName,
			@RequestParam(value="roleDesc")String roleDesc,
			@RequestParam(value="permissionId")Integer[] permissionIds) {
		String result = null;
		if (roleName==null||roleName.equals("")) {
			result = "{\"success\":false,\"msg\":\"修改失败，角色名不能为空！\"}";
			return result;
		}
		if (permissionIds.length==0) {
			result = "{\"success\":false,\"msg\":\"修改失败，请至少选择一个权限！\"}";
			return result;
		}
		Role role = new Role();
		role = roleService.getRoleByName(roleName);
		if (role!=null) {   //判断数据库中是否有相同的角色
			role.setRoleName(roleName);
			role.setRoleDesc(roleDesc);
			roleService.updateRole(role);
			userService.deleteRolePermision(role.getRoleId(), null); //删除所有的，再重新添加，以达到修改的效果
			for (Integer permissionId : permissionIds) {
				//userService.updateRolePermision(role.getRoleId(), permissionId);
				userService.addRolePermision(role.getRoleId(), permissionId);
			}
		}else {			
			result = "{\"success\":false,\"msg\":\"修改失败，该角色名不存在！\"}";
			return result;
		}		
		result = "{\"success\":true,\"msg\":\"修改成功\"}";
		return result;
	}
	
	@RequestMapping(value="deleteRole",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteRole(@RequestParam(value="ids")Integer[] ids) {
		Role role = null;
		for (Integer id : ids) {
			role = new Role();
			role.setRoleId(id);
			roleService.deleteRole(role);
			userService.deleteRolePermision(id, null);
			role = null;
		}		
		String result = "{\"success\":true,\"msg\":\"删除成功\"}";
		return result;
	}
	
	
}
