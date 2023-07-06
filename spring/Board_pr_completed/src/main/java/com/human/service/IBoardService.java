package com.human.service;

import java.util.List;

import com.human.dto.BoardDto;
import com.human.vo.PageMaker;

public interface IBoardService {
	public void write(BoardDto board) throws Exception;

	public BoardDto read(int bno, int indent, int depthno) throws Exception;

	public void modify(BoardDto board) throws Exception;

	public void remove(int bno) throws Exception;

	public List<BoardDto> listSearchCriteria(PageMaker pm) throws Exception;

	public int listSearchCount(PageMaker pm) throws Exception;

	public void viewCount(int bno) throws Exception;

	public void reply_update(BoardDto dto) throws Exception;

	public void reply_insert(BoardDto dto) throws Exception;

	public BoardDto select_bno(Integer bno) throws Exception;
}
