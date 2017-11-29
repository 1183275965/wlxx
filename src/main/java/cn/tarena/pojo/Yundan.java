package cn.tarena.pojo;

import java.util.Date;

public class Yundan  extends BaseEntity{
	private Integer id;
	private String danHao;
	private String chuFadi;
	private String muDidi;
	private Date date;
	private String faHuoRen;
	private String userName;
	private String shouhuoren;
	private String state;
	public String getShouhuoren() {
		return shouhuoren;
	}
	public void setShouhuoren(String shouhuoren) {
		this.shouhuoren = shouhuoren;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDanHao() {
		return danHao;
	}
	public void setDanHao(String danHao) {
		this.danHao = danHao;
	}
	public String getChuFadi() {
		return chuFadi;
	}
	public void setChuFadi(String chuFadi) {
		this.chuFadi = chuFadi;
	}
	public String getMuDidi() {
		return muDidi;
	}
	public void setMuDidi(String muDidi) {
		this.muDidi= muDidi;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getFaHuoRen() {
		return faHuoRen;
	}
	public void setFaHuoRen(String faHuoRen) {
		this.faHuoRen = faHuoRen;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "Yundan [id=" + id + ", danHao=" + danHao + ", chuFadi=" + chuFadi + ", muDidi=" + muDidi + ", date="
				+ date + ", faHuoRen=" + faHuoRen + ", userName=" + userName + ", shouhuoren=" + shouhuoren + ", state="
				+ state + "]";
	}

	
	
}
