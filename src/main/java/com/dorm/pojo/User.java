package com.dorm.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.dorm.pojo.Role;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8860168915950390225L;
	private Integer userId;
	private String username;
	private String password;
	private Date createTime;
	private Date lastTime;
	private String lastIp;
	private Integer status;
	private Boolean locked;
	private Set<Role> roleSet = new HashSet<Role>();  //用户角色
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getLastTime() {
		return lastTime;
	}
	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}
	public String getLastIp() {
		return lastIp;
	}
	public void setLastIp(String lastIp) {
		this.lastIp = lastIp;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Boolean getLocked() {
		return locked;
	}
	public void setLocked(Boolean locked) {
		this.locked = locked;
	}
	
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", createTime="
				+ createTime + ", lastTime=" + lastTime + ", lastIp=" + lastIp + ", status=" + status + ", locked="
				+ locked + "]";
	}
	public Set<Role> getRoleSet() {
		return roleSet;
	}
	public void setRoleSet(Set<Role> roleSet) {
		this.roleSet = roleSet;
	}
	
	
}
