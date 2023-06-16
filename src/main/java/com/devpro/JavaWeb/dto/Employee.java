package com.devpro.JavaWeb.dto;

public class Employee {
	private String ten;
	private Integer tuoi;
	public Employee(String ten, Integer tuoi) {
		super();
		this.ten = ten;
		this.tuoi = tuoi;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public Integer getTuoi() {
		return tuoi;
	}
	public void setTuoi(Integer tuoi) {
		this.tuoi = tuoi;
	}
	
	
}		
