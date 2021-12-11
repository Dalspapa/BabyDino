package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dino.commonop.service.CommonOpService;
import dino.dto.CommonOpDto;

@Controller
public class SearchCardController {

	@Autowired
	private CommonOpService commonOpService;
	
	@RequestMapping("/findTeacherCard.do")
	public ModelAndView findTeacherCard() {
		
		ModelAndView mav = new ModelAndView();
		
		//돌봄분야 리스트 출력
		List<CommonOpDto> c_list = commonOpService.t_care_opList();
		System.out.println("돌봄분야 >>>>>>>>>>" + c_list);
		
		mav.setViewName("searchCard/findTeacherCard");
		mav.addObject("c_list", c_list);
		
		return mav;
	}
	
}
