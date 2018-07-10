package com.dorm.pojo;

import java.io.Serializable;
import java.util.List;

public class Room implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 678328781303025566L;
	private Integer roomId;
	private String factoryName;  //分厂名
	private Integer building;//楼栋编号
	private Integer unit; //单元号
	private Integer floor;//楼层
	private String type;//房间类型
	private String remark;//备注
	private String roomNo; //房间号
	private Integer size; //房间容纳的人数
	private List<Employee> employees; //住宿的员工
	private String roomAdmin;  //宿管
	private Integer roomStatus;
	private Rate rate;
	public Integer getRoomId() {
		return roomId;
	}
	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}
	public String getFactoryName() {
		return factoryName;
	}
	public void setFactoryName(String factoryName) {
		this.factoryName = factoryName;
	}
	public Integer getBuilding() {
		return building;
	}
	public void setBuilding(Integer building) {
		this.building = building;
	}
	public Integer getUnit() {
		return unit;
	}
	public void setUnit(Integer unit) {
		this.unit = unit;
	}
	public Integer getFloor() {
		return floor;
	}
	public void setFloor(Integer floor) {
		this.floor = floor;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	
	public String getRoomAdmin() {
		return roomAdmin;
	}
	public void setRoomAdmin(String roomAdmin) {
		this.roomAdmin = roomAdmin;
	}
	/*@Override
	public String toString() {
		return "Room [roomId=" + roomId + ", factoryName=" + factoryName + ", building=" + building + ", unit=" + unit
				+ ", floor=" + floor + ", type=" + type + ", remark=" + remark + ", roomNo=" + roomNo + ", size=" + size
				+ ", employees=" + employees + ", roomAdmin=" + roomAdmin + "]";
	}*/
	public Integer getRoomStatus() {
		return roomStatus;
	}
	public void setRoomStatus(Integer roomStatus) {
		this.roomStatus = roomStatus;
	}
	public Rate getRate() {
		return rate;
	}
	public void setRate(Rate rate) {
		this.rate = rate;
	}
	@Override
	public String toString() {
		return "Room [roomId=" + roomId + ", factoryName=" + factoryName + ", building=" + building + ", unit=" + unit
				+ ", floor=" + floor + ", type=" + type + ", remark=" + remark + ", roomNo=" + roomNo + ", size=" + size
				+ ", employees=" + employees + ", roomAdmin=" + roomAdmin + ", roomStatus=" + roomStatus + ", rate="
				+ rate + "]";
	}
	
	

	
	
}
