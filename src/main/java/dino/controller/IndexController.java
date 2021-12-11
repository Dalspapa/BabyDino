package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String forwardIndex() {
		return "redirect:/main";
	}
	
	@RequestMapping("/main.do")
	public ModelAndView main() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		
		return mav;
	}
}
