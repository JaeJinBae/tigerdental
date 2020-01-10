package com.webaid.domain;

public class MailRecordVO {
	private int no;
	private String receiver;
	private String title;
	private String content;
	private String regdate;

	public MailRecordVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MailRecordVO [no=" + no + ", receiver=" + receiver + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + "]";
	}

}
