package com.devpro.JavaWeb.dto;

public class Register {
	private String userName;
	private String password;
	private String confirmPassWord;
	private String YourEmail;
	private String YourPhone;


	public Register(String userName, String password, String confirmPassWord, String yourEmail, String yourPhone) {
		this.userName = userName;
		this.password = password;
		this.confirmPassWord = confirmPassWord;
		YourEmail = yourEmail;
		YourPhone = yourPhone;
	}


	public Register() {
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConfirmPassWord() {
		return confirmPassWord;
	}


	public void setConfirmPassWord(String confirmPassWord) {
		this.confirmPassWord = confirmPassWord;
	}


	public String getYourEmail() {
		return YourEmail;
	}


	public void setYourEmail(String yourEmail) {
		YourEmail = yourEmail;
	}


	public String getYourPhone() {
		return YourPhone;
	}


	public void setYourPhone(String yourPhone) {
		YourPhone = yourPhone;
	}
	
	

}
