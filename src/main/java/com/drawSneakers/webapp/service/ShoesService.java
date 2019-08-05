package com.drawSneakers.webapp.service;

import java.util.List;

import com.drawSneakers.webapp.entity.Shoes;

public interface ShoesService {
	List<Shoes> shoesInfo();
	List<Shoes> pushShoesInfo();
	void shoesImageSave(String shoesNum);
}
