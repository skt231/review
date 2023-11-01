package com.booking.dao;

import com.booking.dto.BoardDto;
import com.booking.dto.PageDto;

import java.util.List;

public interface BoardDao {

	// 게시글 작성
	public void insertBoard(BoardDto board) throws Exception;

	// 게시글 수정
	public void updateBoard(BoardDto board) throws Exception;

	// 게시글 삭제
	public void deleteBoard(int board_id) throws Exception;

	// 게시글 상세 조회
	public BoardDto getBoardById(int boardId) throws Exception;

	// 게시글 목록 조회
	public List<BoardDto> getAllBoards() throws Exception;

	/*
	 * // 게시글의 사용자 이름으로 게시글 목록 조회 public List<BoardDto>
	 * selectBoardsByUsername(String username) throws Exception;
	 */
	public List<BoardDto> listSearch(PageDto dto) throws Exception;

	public int listSearchCount(PageDto dto) throws Exception;

	public void viewCount(int boardId) throws Exception;
}