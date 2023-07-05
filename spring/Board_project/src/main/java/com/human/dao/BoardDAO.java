package com.human.dao;

import java.util.List;

import com.human.dto.BoardDto;
import com.human.dto.PageDto;

public interface BoardDAO {
	public void create(BoardDto vo) throws Exception;

	public BoardDto read(Integer bno) throws Exception;

	public void update(BoardDto vo) throws Exception;

	public void delete(Integer bno) throws Exception;

	public List<BoardDto> listAll() throws Exception;

	public void viewCount(int bno) throws Exception;

	public int listSearchCount(PageDto pm) throws Exception;

	public List<BoardDto> listSearch(PageDto pm) throws Exception;
}
