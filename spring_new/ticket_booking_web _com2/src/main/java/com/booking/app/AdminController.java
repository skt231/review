package com.booking.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	@RequestMapping(value = "/admin/admin", method = RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}

	@RequestMapping(value = "/admin/manager", method = RequestMethod.GET)
	public String manager() {
		return "/admin/manager";
	}
}
