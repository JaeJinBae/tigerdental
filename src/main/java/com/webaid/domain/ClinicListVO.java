package com.webaid.domain;

public class ClinicListVO {
	private int no;
	private String c1;
	private String c2;
	private String c3;
	private String c4;
	private int c_depth;
	private int price;
	private String use_state;

	public ClinicListVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getC1() {
		return c1;
	}

	public void setC1(String c1) {
		this.c1 = c1;
	}

	public String getC2() {
		return c2;
	}

	public void setC2(String c2) {
		this.c2 = c2;
	}

	public String getC3() {
		return c3;
	}

	public void setC3(String c3) {
		this.c3 = c3;
	}

	public String getC4() {
		return c4;
	}

	public void setC4(String c4) {
		this.c4 = c4;
	}

	public int getC_depth() {
		return c_depth;
	}

	public void setC_depth(int c_depth) {
		this.c_depth = c_depth;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getUse_state() {
		return use_state;
	}

	public void setUse_state(String use_state) {
		this.use_state = use_state;
	}

	@Override
	public String toString() {
		return "ClinicListVO [no=" + no + ", c1=" + c1 + ", c2=" + c2 + ", c3=" + c3 + ", c4=" + c4 + ", c_depth="
				+ c_depth + ", price=" + price + ", use_state=" + use_state + "]";
	}

}
