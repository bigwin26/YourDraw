package com.drawSneakers.webapp.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class AppPush {
	private String shoes_name;
	private String release_site;
	private String content;
	private String push_gubn;
	private String push_order;
	private String status;
	private String status_message;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reg_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updt_date;

	public AppPush() {
	}


	public AppPush(String shoes_name, String release_site, String content, String push_gubn, String push_order,
			String status, String status_message, Date reg_date, Date updt_date) {
		super();
		this.shoes_name = shoes_name;
		this.release_site = release_site;
		this.content = content;
		this.push_gubn = push_gubn;
		this.push_order = push_order;
		this.status = status;
		this.status_message = status_message;
		this.reg_date = reg_date;
		this.updt_date = updt_date;
	}

	public String getShoes_name() {
		return shoes_name;
	}

	public void setShoes_name(String shoes_name) {
		this.shoes_name = shoes_name;
	}

	public String getRelease_site() {
		return release_site;
	}


	public void setRelease_site(String release_site) {
		this.release_site = release_site;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPush_gubn() {
		return push_gubn;
	}

	public void setPush_gubn(String push_gubn) {
		this.push_gubn = push_gubn;
	}

	public String getPush_order() {
		return push_order;
	}

	public void setPush_order(String push_order) {
		this.push_order = push_order;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus_message() {
		return status_message;
	}

	public void setStatus_message(String status_message) {
		this.status_message = status_message;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Date getUpdt_date() {
		return updt_date;
	}

	public void setUpdt_date(Date updt_date) {
		this.updt_date = updt_date;
	}
}

