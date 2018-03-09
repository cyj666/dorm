package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.Permission;

public interface PermissionMapper {
	public Permission getpermission(Permission permission);
	public List<Permission> getAllpermission();
	
	public void addpermission(Permission permission);
	public void deletepermission(Permission permission);
	public void updatepermission(Permission permission);
}
