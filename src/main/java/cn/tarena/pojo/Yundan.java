package cn.tarena.pojo;

import java.util.Date;

public class Yundan  extends BaseEntity{
	private Integer id;
	private String danHao;
	private String chuFadi;
	private String muDi;
	private Date date;
	private String faHuoRen;
	private String userName;
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
		return muDi;
	}
	public void setMuDidi(String muDidi) {
		this.muDi= muDidi;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "YunDan [id=" + id + ", danHao=" + danHao + ", chuFadi=" + chuFadi + ", muDidi=" + muDi + ", date="
				+ date + ", faHuoRen=" + faHuoRen + ", userName=" + userName + "]";
	}
	
}
