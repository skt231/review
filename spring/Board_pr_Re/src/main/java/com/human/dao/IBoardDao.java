package com.human.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.human.dto.BoardDto;
import com.human.vo.PageMaker;

public interface IBoardDao {
	public void create(BoardDto vo) throws Exception;

	public BoardDto read(@Param("bno") int bno, @Param("indent") int indent, @Param("depthno") int depthno)
			throws Exception;

	public void update(BoardDto vo) throws Exception;

	public void delete(int bno) throws Exception;

	//
	public List<BoardDto> listSearch(PageMaker pm) throws Exception;

	//
	public int listSearchCount(PageMaker pm) throws Exception;

	// viewcnt
	public void viewCount(int bno) throws Exception;

	public void reply_update(BoardDto dto) throws Exception;

	public void reply_insert(BoardDto dto) throws Exception;

	public BoardDto select_bno(Integer bno) throws Exception;

}
