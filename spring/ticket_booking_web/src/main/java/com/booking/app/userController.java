package com.booking.app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.booking.dto.userDto;
import com.booking.service.userService;

@Controller
@RequestMapping("/user/**")
public class userController {
	private static final Logger logger = LoggerFactory.getLogger(userController.class);
	@Autowired
	private userService service;

	@RequestMapping(value = "/linkRegister", method = RequestMethod.GET)
	public String registerUserGet() throws Exception {
		logger.info("register get user...");
		return "/user/register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerUserGet(userDto user, Model model) throws Exception {
		logger.info("register get user...");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerUserPost(userDto user, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("register post user");
		service.addUser(user);
		rttr.addFlashAttribute("msg", "success");
		return "home";
	}


	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public String listAll(Model model) throws Exception {
		logger.info("show all list...");
		model.addAttribute("users", service.getAllUsers());
		return "/user/userList";
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("id") int id, Model model) throws Exception {
		logger.info("read......" + id);
		model.addAttribute(service.getUserById(id));
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("id") int id, RedirectAttributes rttr) throws Exception {
		service.deleteUser(id);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/user/listAll";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(int id, Model model) throws Exception {
		model.addAttribute(service.getUserById(id));
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(userDto user, RedirectAttributes rttr) throws Exception {
		logger.info("mod post...");
		service.updateUser(user);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/user/listAll";
	}
}
