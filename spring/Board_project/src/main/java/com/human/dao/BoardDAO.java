package com.human.dao;

import java.util.List;

import com.human.dto.BoardDto;

public interface BoardDAO {
	public void create(BoardDto vo) throws Exception;

	public BoardDto read(Integer bno) throws Exception;

	public void update(BoardDto vo) throws Exception;

	public void delete(Integer bno) throws Exception;

	public List<BoardDto> listAll() throws Exception;
}
