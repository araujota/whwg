package com.tyler.beltexam.models;

import javax.validation.constraints.NotEmpty;

public class loginUser {
	@NotEmpty(message="Username is required!")
	private String username;
	@NotEmpty(message="Password is required!")
	private String password;
	
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
}
