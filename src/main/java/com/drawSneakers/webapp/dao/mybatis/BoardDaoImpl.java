package com.drawSneakers.webapp.dao.mybatis;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.drawSneakers.webapp.dao.BoardDao;
import com.drawSneakers.webapp.entity.Board;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private SqlSessionTemplate sqlsession;

	@Override
	public List<Board> getList() {
		BoardDao boardDao = sqlsession.getMapper(BoardDao.class);
		return boardDao.getList();
	}

	@Override
	public List<Board> getDetail(int id) {
		BoardDao boardDao = sqlsession.getMapper(BoardDao.class);
		return boardDao.getDetail(id);
	}
}
