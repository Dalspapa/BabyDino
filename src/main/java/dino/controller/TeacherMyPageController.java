package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TeacherMyPageController {

	
	@RequestMapping("/teacherProfile.do")
	public ModelAndView teacherProfile() {
		
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("teacherMypage/teacherProfile");
		return mav;		
	}
	
}
