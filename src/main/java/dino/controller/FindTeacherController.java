package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.CommonOpDto;
import dino.commonop.service.CommonOpService;

@Controller
public class FindTeacherController {
	
	@Autowired
	private CommonOpService commonOpService;

	@RequestMapping("/findTeacher.do")
	public String findTeacher() {
		return "findTeacher/findTeacher";
	}
	
	@RequestMapping("/pickKidsCard.do")
	public String pickKidsCard() {
		return "findTeacher/pickKidsCard";
	}
	
	@RequestMapping("/makeKidsCard.do")
	public ModelAndView makeKidsCard() {
		
		List<CommonOpDto> list = commonOpService.ktendency();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("findTeacher/makeKidsCard");
		return mav;
	}
	
	@RequestMapping("/makeReserveCard.do")
	public String makeReserveCard() {
		return "findTeacher/makeReserveCard";
	}
	
	@RequestMapping("/modalEx.do")
	public String modalEx() {
		return "findTeacher/modalEx";
	}
	
	@RequestMapping("/teacherInfo.do")
	public String teacherInfo() {
		return "findTeacher/teacherInfo";
	}
}
