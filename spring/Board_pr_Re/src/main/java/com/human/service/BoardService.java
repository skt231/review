package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.IBoardDao;
import com.human.dto.BoardDto;
import com.human.vo.PageMaker;

@Service
public class BoardService implements IBoardService {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void write(BoardDto board) throws Exception {
		System.out.println(sqlSession);
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		dao.create(board);
	}

	@Override
	public BoardDto read(int bno, int indent, int depthno) throws Exception {
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		System.out.println(bno);
		System.out.println(depthno);
		System.out.println(indent);
		return dao.read(bno, indent, depthno);
	}

	@Override
	public void modify(BoardDto board) throws Exception {
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		dao.update(board);
	}

	@Override
	public void remove(int bno) throws Exception {
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		dao.delete(bno);

	}

	@Override
	public List<BoardDto> listSearchCriteria(PageMaker pm) throws Exception {
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		return dao.listSearch(pm);
	}

	@Override
	public int listSearchCount(PageMaker pm) throws Exception {
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		return dao.listSearchCount(pm);
	}

	@Override
	public void viewCount(int bno) throws Exception {
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		dao.viewCount(bno);
	}

	@Override
	public void reply_update(BoardDto dto) throws Exception {
		// TODO Auto-generated method stub
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		dao.reply_update(dto);
	}

	@Override
	public void reply_insert(BoardDto dto) throws Exception {
		// TODO Auto-generated method stub
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		dao.reply_insert(dto);
	}

	@Override
	public BoardDto select_bno(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		IBoardDao dao = sqlSession.getMapper(IBoardDao.class);
		System.out.println(dao.select_bno(bno));
		return dao.select_bno(bno);
	}

}
