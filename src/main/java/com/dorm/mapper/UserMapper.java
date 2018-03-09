package com.dorm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dorm.pojo.User;

public interface UserMapper {
	
	public User getUser(User user);
	public User getUsers(User user);
	public List<User> getAllUser();
	public User getUserDetails(@Param("username")String username);
	public List<User> getAllUserDetails();
	
	public void addUser(User user);
	public void deleteUser(User user);
	public void updateUser(User user);
	
	public void addUserRole(@Param("userId")Integer userId,
			@Param("roleId")Integer roleId);
	public void addRolePermision(@Param("roleId")Integer roleId,
			@Param("permissionId")Integer permissionId);
	
	public void deleteUserRole(@Param("userId")Integer userId,
			@Param("roleId")Integer roleId);
	public void deleteRolePermision(@Param("roleId")Integer roleId,
			@Param("permissionId")Integer permissionId);
}
