package com.dorm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.PermissionMapper;
import com.dorm.pojo.Permission;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	PermissionMapper permissionMapper;
	
	@Override
	public Permission getpermission(Permission permission) {
		// TODO Auto-generated method stub
		return permissionMapper.getpermission(permission);
	}

	@Override
	public List<Permission> getAllpermission() {
		// TODO Auto-generated method stub
		return permissionMapper.getAllpermission();
	}

	@Override
	public void addpermission(Permission permission) {
		// TODO Auto-generated method stub
		permissionMapper.addpermission(permission);
	}

	@Override
	public void deletepermission(Permission permission) {
		// TODO Auto-generated method stub
		permissionMapper.deletepermission(permission);
	}

	@Override
	public void updatepermission(Permission permission) {
		// TODO Auto-generated method stub
		permissionMapper.updatepermission(permission);
	}

	@Override
	public Permission getpermissionByName(String permissionName) {
		// TODO Auto-generated method stub
		Permission permission = new Permission();
		permission.setPermissionName(permissionName);
		return permissionMapper.getpermission(permission);
	}

}
