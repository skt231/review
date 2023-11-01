package com.booking.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.dao.BoardDao;
import com.booking.dto.BoardDto;
import com.booking.dto.PageDto;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardDto> getAllBoards() throws Exception {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		List<BoardDto> dtos = boardDao.getAllBoards();
		System.out.println(dtos);
		return dtos;
	}

	@Override
	public BoardDto getBoardById(int boardId) throws Exception {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		return boardDao.getBoardById(boardId);
	}

	@Override
	public void addBoard(BoardDto board) throws Exception {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.insertBoard(board);
	}

	@Override
	public void updateBoard(BoardDto board) throws Exception {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.updateBoard(board);
	}

	@Override
	public void deleteBoard(int boardId) throws Exception {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.deleteBoard(boardId);

	}

	@Override
	public List<BoardDto> listSearchCriteria(PageDto dto) throws Exception {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		return dao.listSearch(dto);
	}

	@Override
	public int listSearchCount(PageDto dto) throws Exception {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		return dao.listSearchCount(dto);
	}

	@Override
	public void viewCount(int boardId) throws Exception {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.viewCount(boardId);
	}

}
