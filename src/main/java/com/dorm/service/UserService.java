package com.dorm.service;

import java.util.List;

import com.dorm.pojo.User;

public interface UserService {

	public User getUserById(int id);
	public User getUserByUsername(String username);
	public List<User> getAllUser();
	public User getUserDetails(String username);
	public List<User> getAllUserDetails();
	
	public void addUser(User user);
	public void deleteUser(User user);
	public void updateUser(User user);
	
	public void addUserRole(Integer userId,Integer roleId);
	public void addRolePermision(Integer roleId,Integer permissionId);
	
	public void deleteUserRole(Integer userId,Integer roleId);
	public void deleteRolePermision(Integer roleId,Integer permissionId);
	
	public void updateRolePermision(Integer roleId,Integer permissionId);
	
}
