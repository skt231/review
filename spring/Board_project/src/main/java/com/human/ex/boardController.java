package com.human.ex;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.BoardDto;
import com.human.dto.PageDto;
import com.human.model.BoardService;

public class boardController {
	@Controller
	@RequestMapping("/")
	public static class BoardController {
		private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
		@Autowired
		private BoardService service;

		@RequestMapping(value = "/register", method = RequestMethod.GET)
		public void registerGET(BoardDto board, Model model) throws Exception {
			logger.info("register get ...........");
		}

		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String registPOST(BoardDto board, Model model, RedirectAttributes rttr) throws Exception {
			logger.info("regist post ...........");
			logger.info(board.toString());
			service.regist(board);
			rttr.addFlashAttribute("msg", "success");
			return "redirect:/listAll";
		}

		@RequestMapping(value = "/listAll", method = RequestMethod.GET)
		public void listAll(PageDto pm, Model model) throws Exception {
			logger.info("show all list......................");
			logger.info("listPage");
			System.out.println("--list pm " + pm);
			model.addAttribute("list", service.listAll());
			model.addAttribute("pageMaker", pm);
			/* model.addAttribute("listCriteria", service.listSearchCriteria(pm)); */
			pm.setTotalCount(service.listSearchCount(pm));
		}

		@RequestMapping(value = "/read", method = RequestMethod.GET)
		public void read(@RequestParam("bno") int bno, Model model) throws Exception {
			logger.info("read......................" + bno);
			service.viewCount(bno);
			model.addAttribute(service.read(bno));
		}

		@RequestMapping(value = "/remove", method = RequestMethod.POST)
		public String remove(@RequestParam("bno") int bno, PageDto pm, RedirectAttributes rttr) throws Exception {
			service.remove(bno);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("page", pm.getPage());
			rttr.addAttribute("perPageNum", pm.getPerPageNum());
			rttr.addAttribute("searchType", pm.getSearchType());
			rttr.addAttribute("keyword", pm.getKeyword());
			rttr.addFlashAttribute("msg", "success");
			return "redirect:/listAll";
		}

		@RequestMapping(value = "/modify", method = RequestMethod.GET)
		public void modifyGET(int bno, Model model, PageDto pm, RedirectAttributes rttr) throws Exception {
			model.addAttribute(service.read(bno));
			rttr.addAttribute("page", pm.getPage());
			rttr.addAttribute("perPageNum", pm.getPerPageNum());
			rttr.addAttribute("searchType", pm.getSearchType());
			rttr.addAttribute("keyword", pm.getKeyword());
			rttr.addFlashAttribute("msg", "success");
		}

		@RequestMapping(value = "/modify", method = RequestMethod.POST)
		public String modifyPOST(BoardDto board, RedirectAttributes rttr) throws Exception {
			logger.info("mod post............");
			service.modify(board);
			rttr.addFlashAttribute("msg", "success");
			return "redirect:/listAll";
		}
	}
}
