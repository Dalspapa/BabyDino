package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindTeacher {

	@RequestMapping("/findTeacher.do")
	public String findTeacher() {
		return "findTeacher/findTeacher";
	}
}
