package com.dorm.service;

import java.util.List;

import com.dorm.pojo.Role;

public interface RoleService {
	public Role getRole(Role role);
	public Role getRoleByName(String roleName);
	public List<Role> getAllRole();
	public List<Role> getAllRoleDetails();
	
	public void addRole(Role role);
	public void deleteRole(Role role);
	public void updateRole(Role role);
}
