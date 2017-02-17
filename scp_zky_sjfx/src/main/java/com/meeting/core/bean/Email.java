package com.meeting.core.bean;


public class Email {
	private int id;
	private String title;
	private String content;
	private String contentHtml;

	public Email() {
	}

	public Email(int id, String title, String content, String contentHtml) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.contentHtml = contentHtml;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContentHtml() {
		return contentHtml;
	}

	public void setContentHtml(String contentHtml) {
		this.contentHtml = contentHtml;
	}

	@Override
	public String toString() {
		return "Email{" +
				"id=" + id +
				", title='" + title + '\'' +
				", content='" + content + '\'' +
				", contentHtml='" + contentHtml + '\'' +
				'}';
	}
}
