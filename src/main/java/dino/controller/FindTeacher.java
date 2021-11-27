package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindTeacher {

	@RequestMapping("/findTeacher.do")
	public String findTeacher() {
		return "findTeacher/findTeacher";
	}
	
	@RequestMapping("/pickKidsCard.do")
	public String pickKidsCard() {
		return "findTeacher/pickKidsCard";
	}
	
	@RequestMapping("/makeKidsCard.do")
	public String makeKidsCard() {
		return "findTeacher/makeKidsCard";
	}
	
	@RequestMapping("/makeReserveCard.do")
	public String makeReserveCard() {
		return "findTeacher/makeReserveCard";
	}
}
