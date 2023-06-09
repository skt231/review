package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.DAO.BoardDAO;
import com.human.dto.BoardDto;

@Service
public class BoardService implements IBoardService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void regist(BoardDto board) throws Exception {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		dao.create(board);

	}

	@Override
	public BoardDto read(Integer bno) throws Exception {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		return dao.read(bno);
	}

	@Override
	public void modify(BoardDto board) throws Exception {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		dao.delete(bno);
	}

	@Override
	public List<BoardDto> listAll() throws Exception {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		List<BoardDto> dtos = dao.listAll();
		// System.out.println(dtos);
		return dtos;
	}

}
