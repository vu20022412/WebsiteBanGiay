package com.devpro.JavaWeb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="tbl_contact")
public class Contact extends BaseEntity{
	@Column(name="name",nullable =false )
	private String name;
	@Column(name="email",nullable = true)
	private String email;
	@Column(name="message",nullable = true)
	private String message;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
