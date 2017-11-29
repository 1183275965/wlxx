package cn.tarena.pojo;

import java.util.Date;

public class News extends BaseEntity{
	private Integer newsId;
	private String newsTitle;
	private Date newsDate;
	private String newsInfo;
	private String newsAppuser;
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public Date getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}
	public String getNewsInfo() {
		return newsInfo;
	}
	public void setNewsInfo(String newsInfo) {
		this.newsInfo = newsInfo;
	}
	public String getNewsAppuser() {
		return newsAppuser;
	}
	public void setNewsAppuser(String newsAppuser) {
		this.newsAppuser = newsAppuser;
	}
	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", newsTitle=" + newsTitle + ", newsDate=" + newsDate + ", newsInfo="
				+ newsInfo + ", newsAppuser=" + newsAppuser + "]";
	}


}
