package cn.tarena.pojo;

import java.util.Date;

public class Chuku  {

	private String chukuId;
	private String number;
	private String name;
	private String chukuInfo;
	private String appuser;
	private Date date;
	private String car;
	private String destination;
	public String getChukuId() {
		return chukuId;
	}
	public void setChukuId(String chukuId) {
		this.chukuId = chukuId;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getChukuInfo() {
		return chukuInfo;
	}
	public void setChukuInfo(String chukuInfo) {
		this.chukuInfo = chukuInfo;
	}
	public String getAppuser() {
		return appuser;
	}
	public void setAppuser(String appuser) {
		this.appuser = appuser;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	@Override
	public String toString() {
		return "Chuku [chukuId=" + chukuId + ", number=" + number + ", name=" + name + ", chukuInfo=" + chukuInfo
				+ ", appuser=" + appuser + ", date=" + date + ", car=" + car + ", destination=" + destination + "]";
	}
	
}
