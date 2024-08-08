package com.AdoptEase.Model;

public class LoginDao {
	private String email;
	private String password; 
	private String role;
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "LoginDao [email=" + email + ", password=" + password + "]";
	}
	public LoginDao() {
		super();
	}
}
