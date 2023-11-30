package com.booking.app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.booking.dto.BoardDto;
import com.booking.dto.PageDto;
import com.booking.dto.userDto;
import com.booking.service.BoardService;
import com.booking.service.FileService;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(userController.class);
	@Autowired
	private BoardService boardservice;
	@Autowired
	private FileService fileservice;

	// 게시판 목록 보기
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(PageDto page, Model model) throws Exception {
		logger.info("listPage");
		System.out.println("--list page " + page);
		page.calcData();
		model.addAttribute("list", boardservice.listSearchCriteria(page));
		page.setTotalCount(boardservice.listSearchCount(page));
		return "/board/list";

	}

	// 게시글 상세 보기
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(@RequestParam("board_id") int board_id,
			@RequestParam(value = "indent", defaultValue = "0") int indent,
			@RequestParam(value = "depthno", defaultValue = "0") int depthno, Model model) throws Exception {
		logger.info("read......" + board_id);
		logger.info("read......" + boardservice.getBoardById(board_id, indent, depthno));
		boardservice.viewCount(board_id);
		model.addAttribute("board", boardservice.getBoardById(board_id, indent, depthno));
		return "/board/view";
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String getBulletin(@RequestParam("bulletin") String bulletin, Model model) throws Exception {
		try {
			logger.info("read......" + bulletin);
			List<BoardDto> boards = boardservice.getBoardBybull(bulletin);
			List<BoardDto> filteredBoards = new ArrayList<>();

			for (BoardDto board : boards) {
				if (board.getBulletin().equals(bulletin)) {
					filteredBoards.add(board);
				}
			}

			if (filteredBoards.isEmpty()) {
				logger.info("No board found for bulletin: " + bulletin);
			} else {
				logger.info("Board information: " + filteredBoards.size() + filteredBoards);
				model.addAttribute("list", filteredBoards);
			}
		} catch (Exception e) {
			logger.error("An error occurred while getting board information: " + e.getMessage(), e);

		}
		return "/board/list";
	}

	// 게시글 작성 페이지로 이동
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String writeGet() {
		logger.info("register get");
		return "/board/write";
	}

	// 게시글 작성 처리
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute BoardDto board, RedirectAttributes rttr, userDto user, HttpSession session,
			@RequestParam("file") MultipartFile file, @RequestParam("boardId") Long boardId, Model model,
			RedirectAttributes redirectAttributes) throws Exception {
		try {
			if (!file.isEmpty()) {
				fileservice.uploadFile(file, boardId);
				redirectAttributes.addFlashAttribute("msg", "File uploaded successfully!");
			}
			rttr.addFlashAttribute("msg", "success");
			user = (userDto) session.getAttribute("user");
			model.addAttribute("user", user);
			boardservice.insertBoard(board);
		} catch (IOException e) {
			logger.error("파일 업로드 중 오류 발생: " + e.getMessage(), e);
			rttr.addFlashAttribute("msg", "error");
		}
		return "redirect:board/list";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public void modifyGet(@RequestParam("board_id") int board_id, @RequestParam("title") String title,
			@RequestParam("content") String content, @RequestParam("username") String username, PageDto page,
			Model model) throws Exception {
		System.out.println(page);
		System.out.println("get=" + content);
		model.addAttribute("board_id", board_id);
		model.addAttribute("title", title);
		model.addAttribute("content", content);
		model.addAttribute("username", username);

	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String modifyPost(HttpServletRequest request, @RequestParam("content") String content, BoardDto board,
			PageDto page, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("post=" + content);
		System.out.println("post=" + content);
		boardservice.updateBoard(board);
		System.out.println(page);
		rttr.addAttribute("page", page.getPage());
		rttr.addAttribute("perPageNum", page.getPerPageNum());
		rttr.addAttribute("searchType", page.getSearchType());
		rttr.addAttribute("keyword", page.getKeyword());
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/board/list";
	}

	// 게시글 삭제 처리
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("board_id") int board_id, PageDto page, RedirectAttributes rttr)
			throws Exception {
		boardservice.deleteBoard(board_id);
		rttr.addAttribute("page", page.getPage());
		rttr.addAttribute("perPageNum", page.getPerPageNum());
		rttr.addAttribute("searchType", page.getSearchType());
		rttr.addAttribute("keyword", page.getKeyword());
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/board/list";
	}

	// 페이지
	@RequestMapping(value = "/comment", method = RequestMethod.GET)
	public void commentGet(@RequestParam("user_id") int user_id, BoardDto board, PageDto page, Model model)
			throws Exception {
		System.out.println("user_id: " + user_id);
		System.out.println(board);
		System.out.println(page);
		model.addAttribute("board_id", board.getBoard_id());
		model.addAttribute("title", board.getTitle());
		model.addAttribute("indent", board.getIndent());
		model.addAttribute("depthno", board.getDepthno());
		model.addAttribute("bulletin", board.getBulletin());

	}

	@RequestMapping(value = "/comment", method = RequestMethod.POST)
	public String commentPost(BoardDto board, RedirectAttributes rttr) throws Exception {
		System.out.println(board);
		board.setUser_id(1); // user_id를 1로 설정
		/* service.comment_update(board); */
		boardservice.comment_insert(board);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/board/list";
	}

	@RequestMapping(value = "/uploadFile/{boardId}", method = RequestMethod.POST)
	public String uploadFile(@PathVariable Long boardId, @RequestParam("file") MultipartFile file) {
		try {
			fileservice.uploadFile(file, boardId);
		} catch (IOException e) {
			e.printStackTrace();
			// 예외 처리
		}
		return "redirect:/board/list";
	}
}
