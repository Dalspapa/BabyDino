package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import dino.Dto.*;
import dino.commonop.service.CommonOpService;

@Controller
public class NoticeController {
	
	@Autowired
	private CommonOpService commonopService;

	@RequestMapping("/noticeMain.do")
	public String noticeMain() {
		return "notice/noticeMain";
	}
	
	//공지사항
	@RequestMapping("/notice.do")
	public ModelAndView notice() {
		List<CommonOpDto> list = commonopService.noticeList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("notice/notice");
		return mav;
	}
	
	@RequestMapping("/mostQna.do")
	public ModelAndView mostQna() {
		List<CommonOpDto> list = commonopService.qna();
		List<CommonOpDto> g_list = commonopService.government();
		List<CommonOpDto> p_list= commonopService.pay();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("g_list", g_list);
		mav.addObject("p_list" ,p_list);
		mav.setViewName("notice/mostQna");
		return mav;
	}
	
	//부모님 이용가이드 페이지
	@RequestMapping("/parentsGuide.do" )
	public String parentsGuidepage() {
		return "notice/parentsGuide";
	}
	
	//선생님 이용 가이드 페이지
	@RequestMapping("/TeacherGuide.do")
	public String TeacherGuide() {
		return "notice/TeacherGuide";
	}
	
	@RequestMapping("/Qna.do")
	public String QnaForm() {
		return "notice/QnaForm";
	}
	
	
	
	
	
}
