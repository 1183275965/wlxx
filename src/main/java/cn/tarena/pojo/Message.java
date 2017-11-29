package cn.tarena.pojo;

import java.util.Date;

public class Message extends BaseEntity{

	private Integer messageId;
	private String messageMsg;
	private String messageAppuser;
	private Date messageDate;
	private String messageReply;
	public Integer getMessageId() {
		return messageId;
	}
	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}
	public String getMessageMsg() {
		return messageMsg;
	}
	public void setMessageMsg(String messageMsg) {
		this.messageMsg = messageMsg;
	}
	public String getMessageAppuser() {
		return messageAppuser;
	}
	public void setMessageAppuser(String messageAppuser) {
		this.messageAppuser = messageAppuser;
	}
	public Date getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(Date messageDate) {
		this.messageDate = messageDate;
	}
	public String getMessageReply() {
		return messageReply;
	}
	public void setMessageReply(String messageReply) {
		this.messageReply = messageReply;
	}
	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", messageMsg=" + messageMsg + ", messageAppuser=" + messageAppuser
				+ ", messageDate=" + messageDate + ", messageReply=" + messageReply + "]";
	}
}
