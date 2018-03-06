package com.dorm.service;

import java.util.List;

import com.dorm.pojo.User;

public interface UserService {

	public User getUserById(int id);
	public User getUserByUsername(String username);
	public List<User> getAllUser();
	
	public void addUser(User user);
	public void deleteUser(User user);
	public void updateUser(User user);
	
}
