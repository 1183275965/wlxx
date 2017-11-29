package cn.tarena.pojo;

import java.util.Date;

public class Storage {


	private String storageId;
	private String storageNum;
	private String storageName;
	private String storageInfo;
	private String storageAppuser;
	private Date date;
	private String storageCar;
	
	public String getStorageId() {
		return storageId;
	}
	public void setStorageId(String storageId) {
		this.storageId = storageId;
	}
	public String getStorageNum() {
		return storageNum;
	}
	public void setStorageNum(String storageNum) {
		this.storageNum = storageNum;
	}
	public String getStorageName() {
		return storageName;
	}
	public void setStorageName(String storageName) {
		this.storageName = storageName;
	}
	public String getStorageInfo() {
		return storageInfo;
	}
	public void setStorageInfo(String storageInfo) {
		this.storageInfo = storageInfo;
	}
	public String getStorageAppuser() {
		return storageAppuser;
	}
	public void setStorageAppuser(String storageAppuser) {
		this.storageAppuser = storageAppuser;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStorageCar() {
		return storageCar;
	}
	public void setStorageCar(String storageCar) {
		this.storageCar = storageCar;
	}
	@Override
	public String toString() {
		return "Storage [storageId=" + storageId + ", storageNum=" + storageNum + ", storageName=" + storageName
				+ ", storageInfo=" + storageInfo + ", storageAppuser=" + storageAppuser + ", date=" + date
				+ ", storageCar=" + storageCar + "]";
	}
	
	
	
	
}
