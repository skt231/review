package com.booking.app;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.booking.dto.BoardDto;
import com.booking.dto.PageDto;
import com.booking.service.BoardService;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(userController.class);
	@Autowired
	private BoardService service;

	// 게시판 목록 보기
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(PageDto dto, Model model) throws Exception {
		logger.info("show all list...");
		dto.calcData();
		List<BoardDto> boards = service.listSearchCriteria(dto);
		int totalBoardCount = service.listSearchCount(dto);
		dto.setTotalCount(totalBoardCount);
		model.addAttribute("boards", boards);
		model.addAttribute("PageDto", dto);
		return "/board/list";

	}

	// 게시글 상세 보기
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(@RequestParam int boardId, Model model) throws Exception {
		logger.info("read......" + boardId);
		service.viewCount(boardId);
		model.addAttribute("board", service.getBoardById(boardId));
		return "/board/view";
	}

	// 게시글 작성 페이지로 이동
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String writeForm() {
		return "/board/write";
	}

	// 게시글 작성 처리
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardDto board) throws Exception {
		service.addBoard(board);
		return "redirect:board/list";
	}

	// 게시글 수정 페이지로 이동
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editForm(@RequestParam int boardId, Model model) throws Exception {
		logger.info("mod GEt...");
		model.addAttribute("board", service.getBoardById(boardId));
		return "board/edit";
	}

	// 게시글 수정 처리
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(BoardDto board, PageDto dto, RedirectAttributes rttr) throws Exception {
		logger.info("mod post...");
		service.updateBoard(board);
		rttr.addAttribute("page", dto.getPage());
		rttr.addAttribute("perPageNum", dto.getPerPageNum());
		rttr.addAttribute("searchType", dto.getSearchType());
		rttr.addAttribute("keyword", dto.getKeyword());
		rttr.addFlashAttribute("msg", "success");
		return "redirect:board/view?boardId=" + board.getBoard_id();
	}

	// 게시글 삭제 처리
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam int boardId, PageDto dto, RedirectAttributes rttr) throws Exception {
		service.deleteBoard(boardId);
		rttr.addAttribute("page", dto.getPage());
		rttr.addAttribute("perPageNum", dto.getPerPageNum());
		rttr.addAttribute("searchType", dto.getSearchType());
		rttr.addAttribute("keyword", dto.getKeyword());
		return "redirect:/board/list";
	}

	// 페이지

}
