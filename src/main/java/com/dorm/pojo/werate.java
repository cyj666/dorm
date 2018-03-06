package com.dorm.pojo;

//水电费实体类
public class werate {

	private String date;//某年某月
	private Double rate;//这月水电费
	private Integer roomNo;//房间号
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
	public Integer getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(Integer roomNo) {
		this.roomNo = roomNo;
	}
	@Override
	public String toString() {
		return "werate [date=" + date + ", rate=" + rate + ", roomNo=" + roomNo + "]";
	}
	
	
}


