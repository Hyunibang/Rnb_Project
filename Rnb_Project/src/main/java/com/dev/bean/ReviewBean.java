package com.dev.bean;

public class ReviewBean {

	private String id;
	private int video_id;
	private int review_id;
	private String context;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getVideo_id() {
		return video_id;
	}
	public void setVideo_id(int video_id) {
		this.video_id = video_id;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	
	@Override
	public String toString() {
		return "ReviewBean [id=" + id + ", video_id=" + video_id + ", review_id=" + review_id + ", context=" + context
				+ "]";
	}
	
}
