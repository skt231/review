package com.booking.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.booking.dto.BoardDto;
import com.booking.dto.PageDto;

public interface BoardService {
	public List<BoardDto> getAllBoards() throws Exception;

	public BoardDto getBoardById(int boardId) throws Exception;

	public void addBoard(BoardDto board) throws Exception;

	public void updateBoard(BoardDto board) throws Exception;

	public void deleteBoard(int boardId) throws Exception;

	public List<BoardDto> listSearchCriteria(PageDto dto) throws Exception;

	public int listSearchCount(PageDto dto) throws Exception;

	public void viewCount(int board_id) throws Exception;

}
