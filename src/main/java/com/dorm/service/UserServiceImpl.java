package com.dorm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.UserMapper;
import com.dorm.pojo.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	
	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUserId(id);
		return userMapper.getUser(user);
	}

	@Override
	public User getUserByUsername(String username) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUsername(username);
		return userMapper.getUser(user);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userMapper.getAllUser();
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		userMapper.deleteUser(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updateUser(user);
	}

	@Override
	public User getUserDetails(String username) {
		// TODO Auto-generated method stub
		return userMapper.getUserDetails(username);
	}

	@Override
	public void addUserRole(Integer userId, Integer roleId) {
		// TODO Auto-generated method stub
		userMapper.addUserRole(userId, roleId);
	}

	@Override
	public void addRolePermision(Integer roleId, Integer permissionId) {
		// TODO Auto-generated method stub
		userMapper.addRolePermision(roleId, permissionId);
	}

	@Override
	public void deleteUserRole(Integer userId, Integer roleId) {
		// TODO Auto-generated method stub
		userMapper.deleteUserRole(userId, roleId);
	}

	@Override
	public void deleteRolePermision(Integer roleId, Integer permissionId) {
		// TODO Auto-generated method stub
		userMapper.deleteRolePermision(roleId, permissionId);
	}

	@Override
	public List<User> getAllUserDetails() {
		// TODO Auto-generated method stub
		return userMapper.getAllUserDetails();
	}

}
