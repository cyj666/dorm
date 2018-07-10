package com.dorm.pojo;

import java.io.Serializable;

/**
 * 费用类
 * @author DELL
 *
 */
public class Rate implements Serializable {
	
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6830722509148969336L;
	private Integer id;
	private Integer roomId;
	private Integer year;
	private Double jan;
	private Double feb;
	private Double mar;
	private Double apr;
	private Double may;
	private Double jun;
	private Double jul;
	private Double aug;
	private Double sep;
	private Double oct;
	private Double nov;
	private Double dec;
	
	
	
	public Rate(Integer id, Integer roomId, Integer year, Double jan, Double feb, Double mar, Double apr, Double may,
			Double jun, Double jul, Double aug, Double sep, Double oct, Double nov, Double dec) {
		super();
		this.id = id;
		this.roomId = roomId;
		this.year = year;
		this.jan = jan;
		this.feb = feb;
		this.mar = mar;
		this.apr = apr;
		this.may = may;
		this.jun = jun;
		this.jul = jul;
		this.aug = aug;
		this.sep = sep;
		this.oct = oct;
		this.nov = nov;
		this.dec = dec;
	}
	
	
	public Rate(Integer roomId, Integer year, Double jan, Double feb, Double mar, Double apr, Double may, Double jun,
			Double jul, Double aug, Double sep, Double oct, Double nov, Double dec) {
		super();
		this.roomId = roomId;
		this.year = year;
		this.jan = jan;
		this.feb = feb;
		this.mar = mar;
		this.apr = apr;
		this.may = may;
		this.jun = jun;
		this.jul = jul;
		this.aug = aug;
		this.sep = sep;
		this.oct = oct;
		this.nov = nov;
		this.dec = dec;
	}

	public Rate() {
		
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public Double getJan() {
		return jan;
	}
	public void setJan(Double jan) {
		this.jan = jan;
	}
	public Double getFeb() {
		return feb;
	}
	public void setFeb(Double feb) {
		this.feb = feb;
	}
	public Double getMar() {
		return mar;
	}
	public void setMar(Double mar) {
		this.mar = mar;
	}
	public Double getApr() {
		return apr;
	}
	public void setApr(Double apr) {
		this.apr = apr;
	}
	public Double getMay() {
		return may;
	}
	public void setMay(Double may) {
		this.may = may;
	}
	public Double getJun() {
		return jun;
	}
	public void setJun(Double jun) {
		this.jun = jun;
	}
	public Double getJul() {
		return jul;
	}
	public void setJul(Double jul) {
		this.jul = jul;
	}
	public Double getAug() {
		return aug;
	}
	public void setAug(Double aug) {
		this.aug = aug;
	}
	public Double getSep() {
		return sep;
	}
	public void setSep(Double sep) {
		this.sep = sep;
	}
	public Double getOct() {
		return oct;
	}
	public void setOct(Double oct) {
		this.oct = oct;
	}
	public Double getNov() {
		return nov;
	}
	public void setNov(Double nov) {
		this.nov = nov;
	}
	public Double getDec() {
		return dec;
	}
	public void setDec(Double dec) {
		this.dec = dec;
	}
	
	public Integer getRoomId() {
		return roomId;
	}
	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}


	@Override
	public String toString() {
		return "Rate [id=" + id + ", roomId=" + roomId + ", year=" + year + ", jan=" + jan + ", feb=" + feb + ", mar="
				+ mar + ", apr=" + apr + ", may=" + may + ", jun=" + jun + ", jul=" + jul + ", aug=" + aug + ", sep="
				+ sep + ", oct=" + oct + ", nov=" + nov + ", dec=" + dec + "]";
	}
	
	
	
	
	
}
