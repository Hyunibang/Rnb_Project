package com.dev.dev;

public class Grade {

	int gradeId;
	int grade;
	int employId;
	
	public int getGradeId() {
		return gradeId;
	}
	public void setGradeId(int gradeId) {
		this.gradeId = gradeId;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getEmployId() {
		return employId;
	}
	public void setEmployId(int employId) {
		this.employId = employId;
	}
	
	@Override
	public String toString() {
		return "Grade [gradeId=" + gradeId + ", grade=" + grade + ", employId=" + employId + "]";
	}
	
	
	
	
}
