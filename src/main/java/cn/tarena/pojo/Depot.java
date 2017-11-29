package cn.tarena.pojo;

public class Depot{

	private String depotId;
	private String depotName;
	private String address;
	private String manager;
	private String phone;
	private String remarks;
	
	

	public String getDepotId() {
		return depotId;
	}



	public void setDepotId(String depotId) {
		this.depotId = depotId;
	}



	public String getDepotName() {
		return depotName;
	}



	public void setDepotName(String depotName) {
		this.depotName = depotName;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getManager() {
		return manager;
	}



	public void setManager(String manager) {
		this.manager = manager;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getRemarks() {
		return remarks;
	}



	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}



	@Override
	public String toString() {
		return "Depot [depotId=" + depotId + ", depotName=" + depotName + ", address=" + address + ", manager="
				+ manager + ", phone=" + phone + ", remarks=" + remarks + "]";
	}
	
	
}
