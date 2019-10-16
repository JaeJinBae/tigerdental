package com.webaid.domain;

public class UserVO {
	private int no;
	private String id;
	private String name;
	private String lv;
	private String pw;
	private String phone;
	private String birth;
	private String gender;
	private String addr;
	private String email;
	private String regdate;
	private int login_cnt;
	private String withdraw;
	private String pw_change_state;

	public UserVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLv() {
		return lv;
	}

	public void setLv(String lv) {
		this.lv = lv;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getLogin_cnt() {
		return login_cnt;
	}

	public void setLogin_cnt(int login_cnt) {
		this.login_cnt = login_cnt;
	}

	public String getWithdraw() {
		return withdraw;
	}

	public void setWithdraw(String withdraw) {
		this.withdraw = withdraw;
	}

	public String getPw_change_state() {
		return pw_change_state;
	}

	public void setPw_change_state(String pw_change_state) {
		this.pw_change_state = pw_change_state;
	}

	@Override
	public String toString() {
		return "UserVO [no=" + no + ", id=" + id + ", name=" + name + ", lv=" + lv + ", pw=" + pw + ", phone=" + phone
				+ ", birth=" + birth + ", gender=" + gender + ", addr=" + addr + ", email=" + email + ", regdate="
				+ regdate + ", login_cnt=" + login_cnt + ", withdraw=" + withdraw + ", pw_change_state="
				+ pw_change_state + "]";
	}

}
