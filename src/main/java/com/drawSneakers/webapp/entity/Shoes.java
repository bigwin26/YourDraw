package com.drawSneakers.webapp.entity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.format.annotation.DateTimeFormat;

public class Shoes {
	private int id;
	private String name;
	private String product_num;
	private String price;
	private String company;
	private String sex;
	private String comment;
	private String color;
	private String method;
	private String launched;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date release_date;
	private String release_url;
	private String release_site;
	private int time_remaining;

	public Shoes() {
	}

	public Shoes(int id, String name, String product_num, String price, String company, String sex, String comment,
			String color,String method, String launched, Date release_date, String release_url, String release_site,
			int time_remaining) {
		super();
		this.id = id;
		this.name = name;
		this.product_num = product_num;
		this.price = price;
		this.company = company;
		this.sex = sex;
		this.comment = comment;
		this.color = color;
		this.method = method;
		this.launched = launched;
		this.release_date = release_date;
		this.release_url = release_url;
		this.release_site = release_site;
		this.time_remaining = time_remaining;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProduct_num() {
		return product_num;
	}
	public void setProduct_num(String product_num) {
		this.product_num = product_num;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getRelease_date() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); //메인화면 카운트다운 보여주기위한 포맷(변경시 카운트다운 작동안함)
		return format.format(release_date);
		
	}
	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}
	public String getLaunched() {
		return launched;
	}

	public void setLaunched(String launched) {
		this.launched = launched;
	}

	public String getRelease_url() {
		return release_url;
	}

	public void setRelease_url(String release_url) {
		this.release_url = release_url;
	}

	public String getRelease_site() {
		return release_site;
	}

	public void setRelease_site(String release_site) {
		this.release_site = release_site;
	}

	public int getTime_remaining() {
		return time_remaining;
	}

	public void setTime_remaining(int time_remaining) {
		this.time_remaining = time_remaining;
	}

	@Override
	public String toString() {
		return "Shoes [id=" + id + ", name=" + name + ", product_num=" + product_num + ", price=" + price + ", company="
				+ company + ", sex=" + sex + ", comment=" + comment + ", color=" + color
				+ ", launched=" + launched + ", release_date=" + release_date + "]";
	}
}

