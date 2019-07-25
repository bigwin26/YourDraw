package com.drawSneakers.webapp.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.drawSneakers.webapp.dao.ShoesDao;
import com.drawSneakers.webapp.entity.Shoes;
import com.drawSneakers.webapp.service.ShoesService;

@Service
public class ShoesServiceImpl implements ShoesService {

	private final ShoesDao shoesDao;

    @Inject
    public ShoesServiceImpl(ShoesDao shoesDao) {
        this.shoesDao = shoesDao;
    }

	@Override
	public List<Shoes> shoesInfo() {
		return shoesDao.shoesInfo();
	}
}
