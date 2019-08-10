package com.drawSneakers.webapp.dao.mybatis;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.drawSneakers.webapp.dao.ShoesDao;
import com.drawSneakers.webapp.entity.Shoes;

@Repository
public class ShoesDaoImpl implements ShoesDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Override
	public List<Shoes> shoesInfo() {
		ShoesDao shoesDao = sqlsession.getMapper(ShoesDao.class);
		return shoesDao.shoesInfo();
	}

	@Override
	public List<Shoes> pushShoesInfo() {
		ShoesDao shoesDao = sqlsession.getMapper(ShoesDao.class);
		return shoesDao.pushShoesInfo();
	}

	@Override
	public void updateShoes() {
		sqlsession.getMapper(ShoesDao.class);		
	}
}
