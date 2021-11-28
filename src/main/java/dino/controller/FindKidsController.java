package dino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dino.commonop.model.*;
import dino.findkids.model.*;

import java.util.*;

@Controller
public class FindKidsController {
	
	@Autowired
	private CommonOpService commonOpService;
	
	@Autowired
	private FindKidsService findKidsService;

	@RequestMapping("/findKids.do")
	public ModelAndView findKids() {
		
		List<FindKidsDTO> k_list = findKidsService.kidsList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("k_list", k_list);
		mav.setViewName("findKids/findKids");		
		return mav;
	}
	
	@RequestMapping(value = "/makeTeacherCard.do", method = RequestMethod.POST)
	public ModelAndView makeTeacherCard(FindKidsDTO dto) {
		
		int result = findKidsService.makeTCard(dto);
		
		String msg = result > 0 ? "선생님 카드가 정상적으로 등록되었습니다!":"선생님 카드 등록에 실패했습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("findKids/kidsMsg");
		return mav;
	}
	
	@RequestMapping(value = "/makeTeacherCard.do", method = RequestMethod.GET)
	public ModelAndView makeTeacherCard() {
		
		List<CommonOpDTO> list = commonOpService.t_job_opList();
		List<CommonOpDTO> k_list = commonOpService.k_type_opList();
		List<CommonOpDTO> c_list = commonOpService.t_care_opList();
		List<CommonOpDTO> d_list = commonOpService.t_date_opList();
		List<CommonOpDTO> t_list = commonOpService.t_time_opList();
		List<CommonOpDTO> b_list = commonOpService.t_bank_opList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("k_list", k_list);
		mav.addObject("c_list", c_list);
		mav.addObject("d_list", d_list);
		mav.addObject("t_list", t_list);
		mav.addObject("b_list", b_list);
		mav.setViewName("findKids/makeTeacherCard");
		return mav;
	}
	
	@RequestMapping("/compulsoryCheck.do")
	public ModelAndView compulsoryCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("findKids/compulsoryCheck");
		return mav;
	}
}
