package com.drawSneakers.webapp.service;

import java.util.List;

import com.drawSneakers.webapp.entity.Shoes;
import com.drawSneakers.webapp.entity.ShoesView;

public interface ShoesService {
	List<ShoesView> shoesInfo();
}
