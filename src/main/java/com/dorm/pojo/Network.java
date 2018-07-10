package com.dorm.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 网络类
 * @author DELL
 *
 */
public class Network implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7841159781925164571L;

	private Integer id;
	private Employee employee;  //要开通网络的员工
	private String mac;  //MAC地址
	private String ip;  //IP地址
	private Date start;  //开通日期
	private Date end;   //到期日期
	private Integer continued;  //持续时间
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String getMac() {
		return mac;
	}
	public void setMac(String mac) {
		this.mac = mac;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public Integer getContinued() {
		return continued;
	}
	public void setContinued(Integer continued) {
		this.continued = continued;
	}
	@Override
	public String toString() {
		return "Network [employee=" + employee + ", mac=" + mac + ", ip=" + ip + ", start=" + start + ", end=" + end
				+ ", continued=" + continued + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
	
	
}
