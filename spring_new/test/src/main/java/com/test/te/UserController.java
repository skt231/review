package com.test.te;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user(Locale locale, Model model) {
		return "/user/user";
	}

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String userError(Locale locale, Model model) {
		return "/user/error";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLogin(Locale locale, Model model) {
		return "/user/login";
	}

}
