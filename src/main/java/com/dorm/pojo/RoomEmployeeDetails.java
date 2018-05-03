package com.dorm.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RoomEmployeeDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1306454217524872279L;
	private Integer id;
	private String roomNo;
	private Employee employee;
	private String employeeNo;
	private Room Room;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dateIn;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dateOut;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	public Date getDateIn() {
		return dateIn;
	}
	public void setDateIn(Date dateIn) {
		this.dateIn = dateIn;
	}
	public Date getDateOut() {
		return dateOut;
	}
	public void setDateOut(Date dateOut) {
		this.dateOut = dateOut;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public Room getRoom() {
		return Room;
	}
	public void setRoom(Room room) {
		Room = room;
	}
	@Override
	public String toString() {
		return "RoomEmployeeDetails [id=" + id + ", roomNo=" + roomNo + ", employee=" + employee + ", employeeNo="
				+ employeeNo + ", Room=" + Room + ", dateIn=" + dateIn + ", dateOut=" + dateOut + "]";
	}
	
	
	
}
