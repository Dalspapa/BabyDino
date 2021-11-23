package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberController {

	@RequestMapping("/icon.do")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/join.do")
	public String join() {
		return "member/join";
	}
	
	@RequestMapping("/findIdPwd.do")
	public String findIdPwd() {
		return "member/findIdPwd";
	}
}
