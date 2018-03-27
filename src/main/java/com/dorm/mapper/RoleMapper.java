package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.Role;

public interface RoleMapper {
	
	public Role getRole(Role role);
	public List<Role> getAllRole();
	public List<Role> getAllRoleDetails();
	
	public void addRole(Role role);
	public void deleteRole(Role role);
	public void updateRole(Role role);
}
