package cn.fam.beans;

import java.io.Serializable;

//审核人信息
public class VerInfo implements Serializable{
	private int id;
	private String UserName;//用户名
	private String Password;//密码
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
}
