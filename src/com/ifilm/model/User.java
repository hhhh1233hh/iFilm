package com.ifilm.model;

public class User {
	
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password
				+ ", gender=" + gender + ", birth=" + birth + ", vip=" + vip
				+ ", email=" + email + "]";
	}

	public User() {

	}
	
	public User(String id, String name, String password, String gender,
			String birth, String vip, String email) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.gender = gender;
		this.birth = birth;
		this.vip = vip;
		this.email = email;
	}
	public String id;
	public String name;
	public String password;
	public String gender;
	public String birth;
	public String vip;
	public String email;
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
	
	
}
