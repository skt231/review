package com.booking.app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booking.service.BoardService;

@Controller
@RequestMapping("/reservation/**")
public class ReservationController {
	private static final Logger logger = LoggerFactory.getLogger(userController.class);

	@Autowired
	private BoardService service;

	// 게시판 목록 보기
	@RequestMapping(value = "/seat", method = RequestMethod.GET)
	public String getSeat() throws Exception {
		return "/reservation_seats";
	}

	@RequestMapping(value = "/seat", method = RequestMethod.POST)
	public String postSeat(@RequestParam("mt20id") String mt20id, @RequestParam("date") String date,
			@RequestParam("location") String location, @RequestParam("time") String time,@RequestParam("title")String title, Model model)
			throws Exception {
		model.addAttribute("mt20id", mt20id);
		model.addAttribute("date", date);
		model.addAttribute("location", location);
		model.addAttribute("time", time);
		model.addAttribute("title",title);
		System.out.println(title);
		return "/reservation_seats";
	}

	/*
	 * @RequestMapping(value = "/payDetail", method = RequestMethod.GET) public void
	 * getpayDetail(@RequestParam("mt20id") String mt20id, @RequestParam("date")
	 * String date, @RequestParam("location") String location, @RequestParam("time")
	 * String time, @RequestParam("totalAmount") int
	 * totalAmount,@RequestParam("selectedSeats") String selectedSeats ,Model model)
	 * { model.addAttribute("mt20id", mt20id); model.addAttribute("date", date);
	 * model.addAttribute("location", location); model.addAttribute("time", time);
	 * model.addAttribute("totalAmount", totalAmount);
	 * model.addAttribute("selectedSeats", selectedSeats); }
	 */
	/*
	 * @RequestMapping(value = "/payDetail", method = RequestMethod.GET) public
	 * return getpayDetail() { }
	 */
	@RequestMapping(value = "/payDetail", method = RequestMethod.POST) 
	public String posPayDetail(@RequestParam("mt20id") String mt20id, @RequestParam("date")
	  String date, @RequestParam("location") String location, @RequestParam("time") String time, @RequestParam("totalAmount") 
	  int totalAmount,@RequestParam("selectedSeats") String selectedSeats,@RequestParam("username") String username,Model model) {		
		model.addAttribute("mt20id", mt20id);
		model.addAttribute("date", date);
		System.out.println(username);
		model.addAttribute("location", location);
		/* System.out.println(location); */
		model.addAttribute("time", time);
		model.addAttribute("totalAmount", totalAmount);
		model.addAttribute("selectedSeats", selectedSeats);
		model.addAttribute("username",username);
	  return "pay_detail";
	  }
	 

}
