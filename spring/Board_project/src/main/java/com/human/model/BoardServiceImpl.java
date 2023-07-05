package com.human.model;

import java.util.List;

import com.human.dto.BoardDto;
import com.human.dto.PageDto;

public interface BoardServiceImpl {
	public void regist(BoardDto board) throws Exception;

	public BoardDto read(Integer bno) throws Exception;

	public void modify(BoardDto board) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<BoardDto> listAll() throws Exception;

	public void viewCount(int bno) throws Exception;

	public int listSearchCount(PageDto pm) throws Exception;

	public List<BoardDto> listSearchCriteria(PageDto pm) throws Exception;
}
