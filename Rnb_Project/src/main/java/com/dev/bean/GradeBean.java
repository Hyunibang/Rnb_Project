package com.dev.bean;

public class GradeBean {
	
	private int video_id;
	private String id;
	private int grade_id;
	private int grade;
	public int getVideo_id() {
		return video_id;
	}
	
	public void setVideo_id(int video_id) {
		this.video_id = video_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGrade_id() {
		return grade_id;
	}
	public void setGrade_id(int grade_id) {
		this.grade_id = grade_id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "GradeBean [video_id=" + video_id + ", id=" + id + ", grade_id=" + grade_id + ", grade=" + grade + "]";
	}
	
}
