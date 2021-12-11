package dino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dino.teachermypage.model.TeacherMyPageDto;
import dino.teachermypage.service.TeacherMyPageService;

@Controller
public class TeacherMyPageController {

	@Autowired
	private TeacherMyPageService teacherMypageService;
	
	String msg = "";
	String goUrl = "";
	
	@RequestMapping("/teacherProfile.do")
	public ModelAndView teacherProfile(int idx) {		
		
		System.out.println("샘프로필 컨트롤러 진입 ==========");
		ModelAndView mav = new ModelAndView();
		System.out.println("샘프로필 idx=======" + idx);
		
		TeacherMyPageDto tDto = teacherMypageService.teacherProfile(idx);
		
		if(tDto == null) {
			msg = "잘못된 접근 또는 회원 정보가 일치하지 않습니다.";
			mav.addObject("msg", msg);
			goUrl = "main.do";
			mav.addObject("goUrl", goUrl);
			mav.setViewName("teacherMypage/tMyMsg");
			return mav;
		}
		mav.addObject("tDto", tDto);
		mav.setViewName("teacherMypage/teacherProfile");
		return mav;		
	}
	
}
