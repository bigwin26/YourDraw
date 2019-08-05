package com.drawSneakers.webapp.dao.mybatis;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.drawSneakers.webapp.dao.PushDao;
import com.drawSneakers.webapp.entity.AppPush;

@Repository
public class PushDaoImpl implements PushDao {

	@Autowired
	private SqlSessionTemplate sqlsession;


	@Override
	public int insertPushResult(String shoes_name, String release_site, String content, String push_order,
			String status, String status_message) {
		PushDao pushDao = sqlsession.getMapper(PushDao.class);
		return pushDao.insertPushResult(shoes_name, release_site, content, push_order, status, status_message);
	}

	@Override
	public void updatePushResult(String shoes_name, String release_site) {
		sqlsession.getMapper(PushDao.class);
	}

}
