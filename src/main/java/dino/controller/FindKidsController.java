package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindKidsController {

	@RequestMapping("/findKids.do")
	public String findKids() {
		return "findKids/findKids";
	}
}
