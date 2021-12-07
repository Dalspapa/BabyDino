package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.CommonOpDto;
import dino.Dto.KidDto;
import dino.commonop.service.CommonOpService;
import dino.findteachers.model.FindTeacherJoinDto;
import dino.findteachers.service.FindTeachersService;

@Controller
public class FindTeacherController {

	@Autowired
	private CommonOpService commonOpService;

	@Autowired
	private FindTeachersService findTeachersService;

	// find teacher card list

	@RequestMapping("/findTeacher.do")
	public String findTeacher() {
		
		System.out.println("======진입======");
		
		return "findTeacher/findTeacher";
	}

	@RequestMapping("/pickKidsCard.do")
	public String pickKidsCard() {
		
		System.out.println("======진입======");
		
		return "findTeacher/pickKidsCard";
	}
	
	@RequestMapping("/formKidsCard.do")
	public ModelAndView formKidsCard(
			@RequestParam (value="idx") int idx) {
		
		System.out.println("======진입======");
		
		ModelAndView mav = new ModelAndView();
		
		List<KidDto> k_dto = findTeachersService.formKidsCard(idx);
		mav.addObject("k_dto", k_dto);
		mav.setViewName("findTeacher/makeKidsCard");
		
		return mav;
	}

	@RequestMapping(value = "/makeKidsCard.do")
	public String makeKidCard(KidDto dto) {
		return "findTeacher/teachersMsg";
	}
	/*
	 * @RequestMapping(value = "/makeKidsCard.do", method = RequestMethod.POST)
	 * public ModelAndView makeKidCard(KidDto dto) {
	 * 
	 * System.out.println("====진입====="+ dto);
	 * 
	 * int result = findTeachersService.makeKCard(dto);
	 * 
	 * String msg = result > 0 ? "아이카드가 정상적으로 등록되었습니다!" : "아이카드 등록에 실패하셨습니다.";
	 * ModelAndView mav = new ModelAndView(); mav.addObject("msg", msg);
	 * mav.setViewName("findTeacher/teachersMsg");
	 * 
	 * return mav; }
	 */
	@RequestMapping("/makeReserveCard.do")
	public String makeReserveCard() {
		return "findTeacher/makeReserveCard";
	}

	@RequestMapping("/modalEx.do")
	public String modalEx() {
		return "findTeacher/modalEx";
	}

	// 선생님 카드 상세 정보(teacher card content)
	@RequestMapping("/teacherInfo.do")
	public ModelAndView teacherInfo(@RequestParam(value = "idx", defaultValue = "0") int idx) {

		ModelAndView mav = new ModelAndView();

		FindTeacherJoinDto t_dto = findTeachersService.teacherInfo(idx);
		System.out.println("=== t_dto : " + t_dto);

		if (t_dto == null) {
			mav.addObject("msg", "잘못된 접근 또는 삭제된 게시글 입니다.");
			mav.setViewName("findTeacher/teachersMsg");
		} else {
			mav.addObject("t_dto", t_dto);
			mav.setViewName("findTeacher/teacherInfo");
		}

		return mav;
	}
}
