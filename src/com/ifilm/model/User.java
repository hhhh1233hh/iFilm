package com.ifilm.model;

public class User {
	
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ",interest=" + interest + ", password=" + password
				+ ", gender=" + gender + ", birth=" + birth + ", vip=" + vip
				+ ", email=" + email + ", balance=" + balance+"]";
	}

	public User() {

	}
	
	public User(String userid, String username,String interest, String password, String email,String gender,
			String birth, String vip, String balance) {
		super();
		this.userid = userid;
		this.username=username;
		this.interest= interest;
		this.password = password;
		this.gender = gender;
		this.birth = birth;
		this.vip = vip;
		this.email = email;
		this.balance=balance;
	}
	public String userid;
	public String username;
	public String interest;
	public String password;
	public String email;
	public String birth;
	public String gender;
	public String vip;
	public String balance;
	public String getId() {
		return userid;
	}
	public void setId(String id) {
		this.userid = id;
	}
	public String getInterest() {
		return interest;
	}
	
	public void setName(String name) {
		this.username = name;
	}
	public String getName() {
		return username;
	}
	
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getMember() {
		return vip;
	}
	public void setMember(String member) {
		this.vip = member;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getBalance() {
		return  balance;
	}
	public void setBalance(String balance) {
		this. balance =  balance;
	}
}
