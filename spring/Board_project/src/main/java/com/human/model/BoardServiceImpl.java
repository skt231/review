package com.human.model;

import java.util.List;

import com.human.dto.BoardDto;

public interface BoardServiceImpl {
	public void regist(BoardDto board) throws Exception;

	public BoardDto read(Integer bno) throws Exception;

	public void modify(BoardDto board) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<BoardDto> listAll() throws Exception;
}
