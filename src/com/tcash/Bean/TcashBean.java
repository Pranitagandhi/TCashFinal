package com.tcash.Bean;

public class TcashBean {

	private String username;
	private String password;
	private Long mobile_no;
	private String fname;
	private String lname;
	private String email;
	private float balance;
	private float credit;
	private float debit;
	private String date1;
	private String date;
	private Long recipient;
	private String remark;

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Long getRecipient() {
		return recipient;
	}

	public void setRecipient(Long recipient) {
		this.recipient = recipient;
	}

	public TcashBean() {

	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(Long mobile_no) {
		this.mobile_no = mobile_no;
	}

	public float getCredit() {
		return credit;
	}

	public void setCredit(float credit) {
		this.credit = credit;
	}

	public float getDebit() {
		return debit;
	}

	public void setDebit(float debit) {
		this.debit = debit;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	public String getDate1() {
		return date;
	}

	public void setDate1(String date1) {
		this.date = date;
	}
}
