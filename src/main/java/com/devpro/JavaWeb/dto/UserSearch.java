package com.devpro.JavaWeb.dto;

public class UserSearch extends BaseSearchModel{
	private String keyword;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
