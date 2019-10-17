package com.drawSneakers.webapp.dao;

import java.util.List;

import com.drawSneakers.webapp.entity.Shoes;

public interface ShoesDao {

	List<Shoes> shoesInfo();
	List<Shoes> pushShoesInfo();
	int updateShoes();
	List<Shoes> getPastDrawList();
	List<Shoes> getNextDrawList();
	List<Shoes> shoesEndInfo();
}
