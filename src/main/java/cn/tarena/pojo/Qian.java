package cn.tarena.pojo;

public class Qian extends BaseEntity{
	private Integer id;
	private String danhao;
	private String qname;
	private String qdate;
	private String jsr;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDanhao() {
		return danhao;
	}
	public void setDanhao(String danhao) {
		this.danhao = danhao;
	}
	public String getQname() {
		return qname;
	}
	public void setQname(String qname) {
		this.qname = qname;
	}
	public String getQdate() {
		return qdate;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	public String getJsr() {
		return jsr;
	}
	public void setJsr(String jsr) {
		this.jsr = jsr;
	}
	@Override
	public String toString() {
		return "Qian [id=" + id + ", danhao=" + danhao + ", qname=" + qname + ", qdate=" + qdate + ", jsr=" + jsr + "]";
	}
	

}
