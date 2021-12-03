package dino.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.CommonOpDto;
import dino.Dto.MakeTCardDto;
import dino.commonop.service.CommonOpService;
import dino.findteachers.model.TeacherInfoDto;
import dino.findteachers.service.FindTeachersService;

@Controller
public class FindTeacherController {
	
	@Autowired
	private CommonOpService commonOpService;
	
	@Autowired
	private FindTeachersService findTeachersService;

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
	
	//선생님 카드 상세 정보(teacher card content)
	@RequestMapping("/teacherInfo.do")
	public ModelAndView teacherInfo(
			@RequestParam(value = "idx", defaultValue = "0")int idx) {
		
		TeacherInfoDto t_dto = findTeachersService.teacherInfo(idx);
		
		ModelAndView mav = new ModelAndView();
	
		if(t_dto == null) {
			mav.addObject("msg", "잘못된 접근 또는 삭제된 게시글 입니다.");
			mav.setViewName("findTeacher/teachersMsg");
		}else {
			mav.addObject("t_dto", t_dto);
			mav.setViewName("findTeacher/teacherInfo");
		}
		
		return mav;
	}
}
