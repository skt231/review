package com.booking.app;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booking.dto.userDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(userDto user) {
	
		return "home";
	}

	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public String showStore() {
		return "store"; // JSP 파일의 이름을 반환합니다 (확장자는 생략).
	}

	@RequestMapping(value = "/playList", method = RequestMethod.GET)
	public String showPlayList() {
		return "playList"; // JSP 파일의 이름을 반환합니다 (확장자는 생략).
	}

	@RequestMapping(value = "/playList_Detailed", method = RequestMethod.GET)
	public String showPlayList_detail() {
		return "playList_Detailed"; // JSP 파일의 이름을 반환합니다 (확장자는 생략).
	}

	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String goReservation() {
		return "reservation"; // JSP 파일의 이름을 반환합니다 (확장자는 생략).
	}

	@RequestMapping(value = "/reservation_seats", method = RequestMethod.GET)
	public String goReservation_seats() {
		return "reservation_seats"; // JSP 파일의 이름을 반환합니다 (확장자는 생략).
	}

	
	  @RequestMapping(value = "/board", method = RequestMethod.GET) public String
	  goBoard() { return "redirect:board/list"; // JSP 파일의 이름을 반환합니다 (확장자는 생략).
	  
	  }
	 

}
