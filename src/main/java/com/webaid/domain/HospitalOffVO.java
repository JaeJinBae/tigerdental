package com.webaid.domain;

public class HospitalOffVO {
	private int no;
	private String title;
	private String off_date;
	private String use_state;

	public HospitalOffVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOff_date() {
		return off_date;
	}

	public void setOff_date(String off_date) {
		this.off_date = off_date;
	}

	public String getUse_state() {
		return use_state;
	}

	public void setUse_state(String use_state) {
		this.use_state = use_state;
	}

	@Override
	public String toString() {
		return "HospitalOffVO [no=" + no + ", title=" + title + ", off_date=" + off_date + ", use_state=" + use_state
				+ "]";
	}

}
