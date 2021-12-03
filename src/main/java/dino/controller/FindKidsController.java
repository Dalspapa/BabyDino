package dino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.*;
import dino.commonop.service.CommonOpService;
import dino.findkids.service.FindKidsService;

import java.util.*;

import javax.servlet.ServletContext;

@Controller
public class FindKidsController {

	
	//public static final String IMGPATH = "C:\\project_dooli\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BabyDino\\resources";
	
	@Autowired
	private CommonOpService commonOpService;
	
	@Autowired
	private FindKidsService findKidsService;
	
	@Autowired
	ServletContext servletContext;
	
	String msg = "";
	String goUrl = "";

	//findkids page 
	@RequestMapping("/findKids.do")
	public ModelAndView findKids() {
		 
		List<MakeTCardDto> k_list = findKidsService.kidsList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("k_list", k_list);
		mav.setViewName("findKids/findKids");
		return mav;
	}
	
	
	@RequestMapping(value = "/makeTeacherCard.do", method = RequestMethod.POST)
	public ResponseEntity<?> makeTeacherCard(MakeTCardDto dto, Common_ImgDto imgDto) {
		
		
		System.out.println("== 컨트롤러 진입.");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		boolean success = false;
		
		List<MultipartFile> imgFiles = new ArrayList<MultipartFile>();
		imgFiles = dto.getTImg();
		String dirPath = servletContext.getRealPath("/resources");
		
		try {
			findKidsService.makeTCard(dto, imgFiles, dirPath, imgDto);
			success = true;
		} catch (Exception e) {
			System.out.println("오류발생. " + e.getMessage());
		};
		
		result.put("success", success);
		return ResponseEntity.ok(result);		
		
		
	}

	//makeTCard page get common_option
	@RequestMapping(value = "/makeTeacherCard.do", method = RequestMethod.GET)
	public ModelAndView makeTeacherCard() {
		
		List<CommonOpDto> list = commonOpService.t_job_opList();
		List<CommonOpDto> k_list = commonOpService.k_type_opList();
		List<CommonOpDto> c_list = commonOpService.t_care_opList();
		List<CommonOpDto> d_list = commonOpService.t_date_opList();
		List<CommonOpDto> t_list = commonOpService.t_time_opList();
		List<CommonOpDto> b_list = commonOpService.t_bank_opList();
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
	
	//dino_compulsory page move
	@RequestMapping("/compulsoryCheck.do")
	public ModelAndView compulsoryCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("findKids/compulsoryCheck");
		
		return mav;
	}

	// Test get imgpath
	@RequestMapping("/getImg.do")
	public ModelAndView getImg(int d_member_idx) {
		
		Common_ImgDto resultImg = findKidsService.imgpath(d_member_idx);
		String [] imgName = resultImg.getC_imgpath().split(",");
		ModelAndView mav = new ModelAndView();
		for (int i = 0; i < imgName.length; i++) {
			System.out.println("가져온 이미지 네임" + imgName[i]);
		}
		mav.addObject("imgName", imgName);
		mav.setViewName("findKids/findKids");
		
		return mav;
	}
	
}

















