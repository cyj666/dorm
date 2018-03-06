package com.dorm.pojo;

import java.io.Serializable;

public class Employee implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1290123725610739596L;
	private Integer employeeId;  
	private String employeeNo; //员工工号
	private String employeeName;
	private String employeeSex;
	private String employeeJob;  //员工职位
	private String employeeWorkplace;  //工作地点
	private String employeeFamily;   //家属信息	
	private String employeeRemark;		//备注
	private Room room;           //住宿的房间
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeSex() {
		return employeeSex;
	}
	public void setEmployeeSex(String employeeSex) {
		this.employeeSex = employeeSex;
	}
	public String getEmployeeJob() {
		return employeeJob;
	}
	public void setEmployeeJob(String employeeJob) {
		this.employeeJob = employeeJob;
	}
	public String getEmployeeWorkplace() {
		return employeeWorkplace;
	}
	public void setEmployeeWorkplace(String employeeWorkplace) {
		this.employeeWorkplace = employeeWorkplace;
	}
	public String getEmployeeFamily() {
		return employeeFamily;
	}
	public void setEmployeeFamily(String employeeFamily) {
		this.employeeFamily = employeeFamily;
	}
	public String getEmployeeRemark() {
		return employeeRemark;
	}
	public void setEmployeeRemark(String employeeRemark) {
		this.employeeRemark = employeeRemark;
	}
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeNo=" + employeeNo + ", employeeName=" + employeeName
				+ ", employeeSex=" + employeeSex + ", employeeJob=" + employeeJob + ", employeeWorkplace="
				+ employeeWorkplace + ", employeeFamily=" + employeeFamily + ", employeeRemark=" + employeeRemark
				+ ", room=" + room + "]";
	}
	
	
	
	
}
