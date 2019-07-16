package com.drawSneakers.webapp.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ShoesView extends Shoes {
	private String thumbnail_image_name;
	private String main_image_name;
	private String image_path;

	public ShoesView() {
	}

	public ShoesView(int id, String name, String product_num, String price, String company, String sex, String like,
			String comment, String color, String launched, Date release_date, String launched_site) {
		super(id, name, product_num, price, company, sex, like, comment, color, launched, release_date, launched_site);
		// TODO Auto-generated constructor stub
	}

	public String getThumbnail_image_name() {
		return thumbnail_image_name;
	}

	public void setThumbnail_image_name(String thumbnail_image_name) {
		this.thumbnail_image_name = thumbnail_image_name;
	}

	public String getMain_image_name() {
		return main_image_name;
	}

	public void setMain_image_name(String main_image_name) {
		this.main_image_name = main_image_name;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
}

