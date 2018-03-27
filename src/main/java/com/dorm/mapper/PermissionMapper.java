package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.Permission;

public interface PermissionMapper {
	public Permission getPermission(Permission permission);
	public List<Permission> getAllPermission();
	
	public void addPermission(Permission permission);
	public void deletePermission(Permission permission);
	public void updatePermission(Permission permission);
}
