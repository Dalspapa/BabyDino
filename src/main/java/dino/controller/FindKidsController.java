package dino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dino.Dto.*;
import dino.findkids.model.*;
import dino.Dto.CommonOpDto;
import dino.Dto.MakeTCardDto;
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
	@RequestMapping(value = "/findKids.do")
	public ModelAndView findKids() {		
	
		List<FindKidsJoinDto> KidsList = findKidsService.kidsList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("KidsList", KidsList);
		mav.setViewName("findKids/findKids");
		return mav;
	}

	
	// Test get imgpath
	@RequestMapping("/getImg.do")
	public ModelAndView getImg(int d_member_idx) {
		
		List<Common_ImgDto> resultImg = findKidsService.imgpath(d_member_idx);
		
		String [] imgName = {};
		for(int i = 0; i < resultImg.size(); i++) {
			System.out.println("리스트로 가져온 이미지"+resultImg.get(i).getC_imgpath());
			imgName = resultImg.get(i).getC_imgpath().split(",");
		}
		System.out.println(imgName+"22222222222222mg");
		//String [] imgName = resultImg.getC_imgpath().split(",");
		ModelAndView mav = new ModelAndView();
//			for (int i = 0; i < imgName.length; i++) {
//				System.out.println("가져온 이미지 네임" + imgName[i]);
//			}
		mav.addObject("imgName", imgName);
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
		
		if ( imgDto.getC_imgpath() == null || imgDto.getC_imgpath().equals("")) {
			imgDto.setC_imgpath("teacher.png");
			
		}
//			else if ( dto.getTImg() == null || dto.getTImg().size() == 0) {
//			dto.setTImg("teacher.png");
//			imgFiles.set(0, (MultipartFile)"teacher.png");
//		}
		
		String dirPath = servletContext.getRealPath("/resources");
		
		try {
			findKidsService.makeTCard(dto, imgFiles, dirPath, imgDto);
			success = true;
		} catch (Exception e) {
			System.out.println("오류발생. " + e.getMessage());
		};
		
		int setImg = findKidsService.tSetImg(imgDto);
		if( setImg != 1 ) {
			result.put("fail", false);
		} else {
			result.put("success", success);
		}
		
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
	

	//KidsList -> KidsContent move
	@RequestMapping(value = "/kidsContent.do", method = RequestMethod.GET)
	public ModelAndView kidsContent(@RequestParam("idx")int idx) {
		
		System.out.println("parameter====="+idx);
		
		FindKidsJoinDto kidInfoDto = findKidsService.kidContent(idx);
		System.out.println("controller=====" + kidInfoDto.toString());
		ModelAndView mav = new ModelAndView();
		System.out.println(kidInfoDto.getK_care_type());
				
		if (kidInfoDto != null) {
			mav.addObject("kidInfoDto", kidInfoDto);
			mav.setViewName("findKids/kidsContent");			
		} 
			mav.addObject("msg", "매칭된 게시물 또는 삭제된 게시물입니다.");
			mav.setViewName("findKids/kidsContent");
		
		return mav;		
	}

	
	

}

















