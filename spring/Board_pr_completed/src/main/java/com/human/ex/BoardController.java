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
import com.human.service.IBoardService;
import com.human.vo.PageMaker;

@Controller
@RequestMapping("/")
public class BoardController {

	@Autowired
	private IBoardService bs;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(PageMaker pm, Model model) throws Exception {
		logger.info("listPage");
		System.out.println("--list pm " + pm);
		model.addAttribute("list", bs.listSearchCriteria(pm));
		pm.setTotalCount(bs.listSearchCount(pm));
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void writeGet(BoardDto dto, Model model) throws Exception {
		logger.info("register get");

	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writePost(BoardDto dto, RedirectAttributes rttr) throws Exception {
		rttr.addFlashAttribute("msg", "success");
		bs.write(dto);
		return "redirect:/list";
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, @RequestParam("indent") int indent,
			@RequestParam("depthno") int depthno, PageMaker pm, Model model) throws Exception {
		System.out.println("-----read pm" + pm);
		bs.viewCount(bno);
		model.addAttribute("list_read", bs.read(bno, indent, depthno));
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("bno") int bno, PageMaker pm, Model model, RedirectAttributes rttr)
			throws Exception {
		bs.remove(bno);
		rttr.addAttribute("page", pm.getPage());
		rttr.addAttribute("perPageNum", pm.getPerPageNum());
		rttr.addAttribute("searchType", pm.getSearchType());
		rttr.addAttribute("keyword", pm.getKeyword());
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/list";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGet(@RequestParam("bno") int bno, @RequestParam("title") String title,
			@RequestParam("content") String content, @RequestParam("writer") String writer, PageMaker pm, Model model)
			throws Exception {
		System.out.println(pm);
		model.addAttribute("bno", bno);
		model.addAttribute("title", title);
		model.addAttribute("content", content);
		model.addAttribute("writer", writer);

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(BoardDto dto, PageMaker pm, Model model, RedirectAttributes rttr) throws Exception {
		bs.modify(dto);

		System.out.println(pm);

		rttr.addAttribute("page", pm.getPage());
		rttr.addAttribute("perPageNum", pm.getPerPageNum());
		rttr.addAttribute("searchType", pm.getSearchType());
		rttr.addAttribute("keyword", pm.getKeyword());
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/list";
	}

	@RequestMapping(value = "/reply", method = RequestMethod.GET)
	public void replyGet(BoardDto dto, PageMaker pm, Model model) throws Exception {
		System.out.println(pm);
		System.out.println(dto);
		model.addAttribute("bno", dto.getBno());
		model.addAttribute("title", dto.getTitle());
		model.addAttribute("indent", dto.getIndent());
		model.addAttribute("depthno", dto.getdepthno());

	}

	@RequestMapping(value = "/reply", method = RequestMethod.POST)
	public String replyPost(BoardDto dto, RedirectAttributes rttr) throws Exception {
		System.out.println(dto);
		bs.reply_update(dto);
		bs.reply_insert(dto);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/list";
	}

}
