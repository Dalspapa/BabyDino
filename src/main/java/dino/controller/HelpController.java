package dino.controller;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelpController {

	@RequestMapping(value="/notice.do",method=RequestMethod.GET)
	public String noticeForm() {
		
			return "help/notice";
	}
	
}
