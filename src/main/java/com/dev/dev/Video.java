package com.dev.dev;

public class Video {
	
	int videoId;
	int employId;
	int gradeId;
	int reviewId;
	String title;
	String genre;
	int imageNumber;
	
	public int getVideoId() {
		return videoId;
	}
	public void setVideoId(int videoId) {
		this.videoId = videoId;
	}
	public int getEmployId() {
		return employId;
	}
	public void setEmployId(int employId) {
		this.employId = employId;
	}
	public int getGradeId() {
		return gradeId;
	}
	public void setGradeId(int gradeId) {
		this.gradeId = gradeId;
	}
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getImageNumber() {
		return imageNumber;
	}
	public void setImageNumber(int imageNumber) {
		this.imageNumber = imageNumber;
	}
	
	@Override
	public String toString() {
		return "Grade [videoId=" + videoId + ", employId=" + employId + ", gradeId=" + gradeId + ", reviewId="
				+ reviewId + ", title=" + title + ", genre=" + genre + ", imageNumber=" + imageNumber + "]";
	}
	
	
}
