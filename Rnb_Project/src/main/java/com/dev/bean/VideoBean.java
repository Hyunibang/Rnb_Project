package com.dev.bean;

public class VideoBean {
	
	private int video_id;
	private String title;
	private String genre;
	private String image_number;
	private String id;
	private int ranking;
	
	public int getVideo_id() {
		return video_id;
	}
	public void setVideo_id(int video_id) {
		this.video_id = video_id;
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
	public String getImage_number() {
		return image_number;
	}
	public void setImage_number(String image_number) {
		this.image_number = image_number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	@Override
	public String toString() {
		return "VideoBean [video_id=" + video_id + ", title=" + title + ", genre=" + genre + ", image_number="
				+ image_number + ", id=" + id + ", ranking=" + ranking + "]";
	}
}
