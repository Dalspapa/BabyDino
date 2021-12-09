package dino.controller;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import dino.Dto.CommonOpDto;
import dino.Dto.Common_ImgDto;
import dino.Dto.KidDto;
import dino.Dto.MakeTCardDto;
import dino.commonop.service.CommonOpService;
import dino.findteachers.model.FindTeacherJoinDto;
import dino.findteachers.service.FindTeachersService;

@Controller
public class FindTeacherController {

	@Autowired
	private CommonOpService commonOpService;

	@Autowired
	private FindTeachersService findTeachersService;
	
	@Autowired
	ServletContext servletContext;

	// find teacher card list

	/*
	 * @RequestMapping("/findTeacher.do") public ModelAndView findTeacher() {
	 * 
	 * //test code System.out.println("======진입======");
	 * 
	 * List<FindTeacherJoinDto> t_List = findTeachersService.teacherList();
	 * ModelAndView mav = new ModelAndView(); mav.addObject("t_List", t_List);
	 * mav.setViewName("findTeacher/findTeacher");
	 * 
	 * return mav; }
	 */
	
	/*
	 * // insert making Kid Card
	 * 
	 * @RequestMapping("/makeKidsCard.do") public ModelAndView makeKidCard(KidDto
	 * dto) {
	 * 
	 * System.out.println("====진입=====" + dto);
	 * 
	 * int result = findTeachersService.makeKCard(dto);
	 * 
	 * String msg = result > 0 ? "아이카드가 정상적으로 등록되었습니다!" : "아이카드 등록에 실패하셨습니다.";
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.addObject("msg", msg);
	 * mav.setViewName("findTeacher/teachersMsg");
	 * 
	 * return mav; }
	 */

	@RequestMapping("/pickKidsCard.do")
	public ModelAndView pickKidsCard(@RequestParam(value = "idx", defaultValue = "0") int idx) {

		// test
		System.out.println("======진입======" + idx);

		ModelAndView mav = new ModelAndView();

		List<KidDto> mkList = findTeachersService.pickKidsCard(idx);

		// test
		System.out.println("== name : " + mkList.get(0));
		mav.addObject("k_dto", mkList);
		mav.setViewName("findTeacher/pickKidsCard");

		return mav;
	}
	
	// Make KidsCard list
	@RequestMapping(value = "/makingKidCard.do")
	public ModelAndView makeKidcard() {
		
		//test Code
		System.out.println("====컨트롤러 진입===");
		
		List<CommonOpDto> k_list = commonOpService.ktendency();
		List<CommonOpDto> care_list = commonOpService.k_care_type();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("k_list", k_list);
		mav.addObject("care_list", care_list);
		mav.setViewName("findTeacher/makeKidsCard");
		
		return mav;
	}
	
	// set kid img 	
	@RequestMapping(value = "/makeKidCard.do", method = RequestMethod.POST)
	public ResponseEntity<?> makeKidCard(KidDto dto, Common_ImgDto imgDto){
		
		// test code
		System.out.println(">>>>>컨트롤러 진입<<<<<<");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		boolean success = false;
		
		List<MultipartFile> imgFiles = new ArrayList<MultipartFile>();
		imgFiles = dto.getkImg();
		
		if (imgDto.getC_imgpath() == null || imgDto.getC_imgpath().equals("")) {
			imgDto.setC_imgpath("kid.png");
		} 
		
		String dirPath = servletContext.getRealPath("/resources");
		
		try {
			findTeachersService.makeKCard(dto, imgDto, imgFiles, dirPath);
			success = true;
		} catch (Exception e) {
			System.out.println("요류입니다." + e.getMessage());
		};
		
		int setImg = findTeachersService.kSetImg(imgDto);
		
		if(setImg != 1) {
			result.put("fail", false);			
		}else {
			result.put("success", success);
			
		}
		result.put("success", success);
		
		return ResponseEntity.ok(result);
	}
	
	//get img path
	@RequestMapping("/getKidImg.do")
	public ModelAndView getImg(int d_member_idx) {
		
		List<Common_ImgDto> resultImg = findTeachersService.imgpath(d_member_idx);
		
		String [] imgName = {};
		
		for(int i = 0; i < resultImg.size(); i++) {
			//test code
			System.out.println("리스트로 가져온 이미지" + resultImg.get(i).getC_imgpath());
			imgName = resultImg.get(i).getC_imgpath().split(",");
		}
		//test code
		System.out.println(imgName + ">>> 이미지 ㅎㅇㅇㅇㅇㅇ <<<");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("imgName", imgName);
		mav.setViewName("findTeacher/findteacher");
		
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

	// 선생님 카드 상세 정보(teacher card content)
	@RequestMapping("/teacherInfo.do")
	public ModelAndView teacherInfo(
			@RequestParam(value = "idx", defaultValue = "0") int idx) {

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
