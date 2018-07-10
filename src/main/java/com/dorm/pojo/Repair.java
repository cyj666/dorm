package com.dorm.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 维修实体类
 * @author DELL
 *
 */
public class Repair implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5632553700142207003L;

	private Integer id;
	private String reason;   //修理原因
	private String result;   //修理结果
	private String roomNo;  //房间号
	private String declarant;  //申报人
	private String remark;  //备注
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createDate; //申请日期
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date resultDate; //修复日期
	private String repairman; //修理人员
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getDeclarant() {
		return declarant;
	}
	public void setDeclarant(String declarant) {
		this.declarant = declarant;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getResultDate() {
		return resultDate;
	}
	public void setResultData(Date resultDate) {
		this.resultDate = resultDate;
	}
	public String getRepairman() {
		return repairman;
	}
	public void setRepairman(String repairman) {
		this.repairman = repairman;
	}
	@Override
	public String toString() {
		return "Repair [id=" + id + ", reason=" + reason + ", result=" + result + ", roomNo=" + roomNo + ", declarant="
				+ declarant + ", remark=" + remark + ", createDate=" + createDate + ", resultDate=" + resultDate
				+ ", repairman=" + repairman + "]";
	}
	
	
	
	
	
}
