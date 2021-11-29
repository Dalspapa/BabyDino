package dino.controller;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class helpController {

	@RequestMapping(value="/notice.do",method=RequestMethod.GET)
	public ModelAndView noticeForm() {
			return "help/notice";
	}
	
}
