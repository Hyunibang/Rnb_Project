package com.dev.dev;

public class Customer {
	
	int employId;
	String id;
	String password;
	String name;
	String phoneNumber;
	int age;
	String gender;
	int animationCount;
	int movieCount;
	
	public int getEmployId() {
		return employId;
	}
	public void setEmployId(int employId) {
		this.employId = employId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAnimationCount() {
		return animationCount;
	}
	public void setAnimationCount(int animationCount) {
		this.animationCount = animationCount;
	}
	public int getMovieCount() {
		return movieCount;
	}
	public void setMovieCount(int movieCount) {
		this.movieCount = movieCount;
	}
	
	@Override
	public String toString() {
		return "Customer [employId=" + employId + ", id=" + id + ", password=" + password + ", name=" + name
				+ ", phoneNumber=" + phoneNumber + ", age=" + age + ", gender=" + gender + ", animationCount="
				+ animationCount + ", movieCount=" + movieCount + "]";
	}
	
}
