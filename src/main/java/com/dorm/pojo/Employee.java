package com.dorm.pojo;

import java.io.Serializable;
import java.util.Date;

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
	
	private String phoneNo;  //手机号码
	
	private Integer employeeStatus = 1;
	
	private String log;
	
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
	/*@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeNo=" + employeeNo + ", employeeName=" + employeeName
				+ ", employeeSex=" + employeeSex + ", employeeJob=" + employeeJob + ", employeeWorkplace="
				+ employeeWorkplace + ", employeeFamily=" + employeeFamily + ", employeeRemark=" + employeeRemark
				+ ", room=" + room + "]";
	}*/
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public Integer getEmployeeStatus() {
		return employeeStatus;
	}
	public void setEmployeeStatus(Integer employeeStatus) {
		this.employeeStatus = employeeStatus;
	}
	/*@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeNo=" + employeeNo + ", employeeName=" + employeeName
				+ ", employeeSex=" + employeeSex + ", employeeJob=" + employeeJob + ", employeeWorkplace="
				+ employeeWorkplace + ", employeeFamily=" + employeeFamily + ", employeeRemark=" + employeeRemark
				+ ", room=" + room + ", phoneNo=" + phoneNo + ", employeeStatus=" + employeeStatus + "]";
	}*/
	public String getLog() {
		return log;
	}
	public void setLog(String log) {
		this.log = log;
	}
	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeNo=" + employeeNo + ", employeeName=" + employeeName
				+ ", employeeSex=" + employeeSex + ", employeeJob=" + employeeJob + ", employeeWorkplace="
				+ employeeWorkplace + ", employeeFamily=" + employeeFamily + ", employeeRemark=" + employeeRemark
				+ ", room=" + room + ", phoneNo=" + phoneNo + ", employeeStatus=" + employeeStatus + ", log=" + log
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((employeeId == null) ? 0 : employeeId.hashCode());
		result = prime * result + ((employeeName == null) ? 0 : employeeName.hashCode());
		result = prime * result + ((employeeNo == null) ? 0 : employeeNo.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Employee other = (Employee) obj;
		if (employeeId == null) {
			if (other.employeeId != null)
				return false;
		} else if (!employeeId.equals(other.employeeId))
			return false;
		if (employeeName == null) {
			if (other.employeeName != null)
				return false;
		} else if (!employeeName.equals(other.employeeName))
			return false;
		if (employeeNo == null) {
			if (other.employeeNo != null)
				return false;
		} else if (!employeeNo.equals(other.employeeNo))
			return false;
		return true;
	}
	
	
}
