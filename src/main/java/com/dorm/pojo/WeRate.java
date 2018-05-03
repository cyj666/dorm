package com.dorm.pojo;

import java.io.Serializable;

//水电费实体类
public class WeRate implements Serializable {

	private Integer id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	private String date;//某年某月
	private Double rate;//这月水电费
	private String roomNo;//房间号
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Double getRate() {
		return rate;
	}
	public void setRate(Double rate) {
		this.rate = rate;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	@Override
	public String toString() {
		return "werate [date=" + date + ", rate=" + rate + ", roomNo=" + roomNo + "]";
	}
	
	
}


