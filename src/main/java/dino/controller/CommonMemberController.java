package dino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import dino.dto.*;

@Controller
public class CommonMemberController {

	@RequestMapping("/accountManagement.do")
	public ModelAndView accountMember(MemberDto mdto) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("commonMember/accountManagement");
		return mav;
		
	}
	
}
