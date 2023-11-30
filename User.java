package com.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userid;
	private String useremail;
	private String usernm;
	private String usercity;
	private String usermob;
	private String password;
	private String gender;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUsernm() {
		return usernm;
	}
	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}
	public String getUsercity() {
		return usercity;
	}
	public void setUsercity(String usercity) {
		this.usercity = usercity;
	}
	public String getUsermob() {
		return usermob;
	}
	public void setUsermob(String usermob) {
		this.usermob = usermob;
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
	@Override
	public String toString() {
		return "User [userid=" + userid + ", useremail=" + useremail + ", usernm=" + usernm + ", usercity=" + usercity
				+ ", usermob=" + usermob + ", password=" + password + ", gender=" + gender + "]";
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int userid, String useremail, String usernm, String usercity, String usermob, String password,
			String gender) {
		super();
		this.userid = userid;
		this.useremail = useremail;
		this.usernm = usernm;
		this.usercity = usercity;
		this.usermob = usermob;
		this.password = password;
		this.gender = gender;
	}
	
	

}
