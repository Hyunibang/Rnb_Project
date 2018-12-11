package com.dev.bean;

public class CustomerBean {

	private String id;
	private String password;
	private String name;
	private String phonenumber;
	private int age;
	private String gender;
	private int animation_count;
	private int movie_count;
	
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
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
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
	public int getAnimation_count() {
		return animation_count;
	}
	public void setAnimation_count(int animation_count) {
		this.animation_count = animation_count;
	}
	public int getMovie_count() {
		return movie_count;
	}
	public void setMovie_count(int movie_count) {
		this.movie_count = movie_count;
	}
	
	@Override
	public String toString() {
		return "CustomerBean [id=" + id + ", password=" + password + ", name=" + name + ", phonenumber=" + phonenumber
				+ ", age=" + age + ", gender=" + gender + ", animation_count=" + animation_count + ", movie_count="
				+ movie_count + "]";
	}
	
}
