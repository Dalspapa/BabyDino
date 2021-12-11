package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchCardController {

	@RequestMapping("/findTeacherCard.do")
	public String findTeacherCard() {
		return "searchCard/findTeacherCard";
	}
	
}
