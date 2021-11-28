package dino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dino.commonop.model.*;

import java.util.*;

@Controller
public class FindKidsController {
	
	@Autowired
	private CommonOpService commonOpService;

	@RequestMapping("/findKids.do")
	public String findKids() {
		return "findKids/findKids";
	}
	
	@RequestMapping("/makeTeacherCard.do")
	public ModelAndView makeTeacherCard() {
		
		List<CommonOpDTO> list = commonOpService.t_job_opList();
		List<CommonOpDTO> k_list = commonOpService.k_type_opList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("k_list", k_list);
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
