package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.User;

public interface UserMapper {
	
	public User getUser(User user);
	public User getUsers(User user);
	public List<User> getAllUser();
	
	public void addUser(User user);
	public void deleteUser(User user);
	public void updateUser(User user);
	
}
