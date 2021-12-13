package dino.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dino.dto.CommonOpDto;
import dino.dto.Common_ImgDto;
import dino.dto.KidDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.commonop.service.CommonOpService;
import dino.findteachers.model.FindTeacherJoinDto;
import dino.findteachers.service.FindTeachersService;

@Controller
public class FindTeacherController {

	@Autowired
	private CommonOpService commonOpService;

	@Autowired
	private FindTeachersService teachersService;

	@Autowired
	ServletContext servletContext;

	
	// find teacher card list	
	 @RequestMapping("/findTeacher.do") 
	 public ModelAndView findTeacher() {
		
	 List<FindTeacherJoinDto> t_List = teachersService.teacherList();
	 ModelAndView mav = new ModelAndView(); 
	 mav.addObject("t_List", t_List);
	 mav.setViewName("findTeacher/findTeacher");
	
	 return mav;
	 }
	 
	//get img path
	@RequestMapping("/getKidImg.do") 
	public ModelAndView getImg(int d_member_idx){
	 
	List<Common_ImgDto> resultImg = teachersService.imgpath(d_member_idx);
	 
	String [] imgName = {};
	for(int i = 0; i < resultImg.size(); i++) {
		System.out.println("리스트로 가져온 이미지"+resultImg.get(i).getC_imgpath());
		imgName = resultImg.get(i).getC_imgpath().split(",");
	}
	 //test code
		System.out.println(imgName+"22222222222222mg");
	  
	  ModelAndView mav = new ModelAndView(); 
		  mav.addObject("imgName", resultImg);
		  mav.setViewName("findTeacher/findteacher");
	 
	  	return mav; 
	  }
 
	//아이 카드 만들기
	@RequestMapping(value = "/makeKidsCard.do", method = RequestMethod.POST)
	public ResponseEntity<?> makeKidCard(KidDto dto, Common_ImgDto imgDto, HttpServletRequest request, MemberDto mdto, HttpSession session){

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
		String saveIdx = String.valueOf(request.getSession().getAttribute("saveIdx"));
		
		if(StringUtils.isEmpty(saveIdx)) {
			throw new IllegalStateException("로그인 상태가 아닙니다.");
		}
		dto.setIdx(Integer.parseInt(saveIdx));
		
		teachersService.makeKCard(dto, imgFiles, dirPath, imgDto, request);
		result.put("fail", false);
		success = true;
		
	} catch (Exception e) { 
		System.out.println("오류입니다." + e.getMessage()); 
		result.put("success", success);
	
	};
	
		int setImg = teachersService.kSetImg(imgDto);
		if(setImg != 1) {
			result.put("fail", false); 
		  } else { 
			  result.put("success", success);
		  }
		return ResponseEntity.ok(result);
	}
	
//	// 찐또메이크 아이카드 등록
//	@RequestMapping("/makeKidsCard.do")
//	public ModelAndView makeKidCard(KidDto dto) {
//
//		System.out.println("====아이카드 추가 등록 컨트롤러 진입=====" + dto);
//
//		int result = teachersService.makeKCard(dto);
//
//		String msg = result > 0 ? "아이카드가 정상적으로 등록되었습니다!" : "아이카드 등록에 실패하셨습니다.";
//
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("msg", msg);
//		mav.setViewName("findTeacher/teachersMsg");
//
//		return mav;
//	}
	
	//나의 아이카드 리스트 출력 메소드
	@RequestMapping("/pickKidsCard.do")
	public ModelAndView showPickKidsCard(
			@RequestParam(value = "idx", defaultValue = "0") int idx) {

		ModelAndView mav = new ModelAndView();

		//아이카드 불러오기
		List<KidDto> mkList = teachersService.pickKidsCard(idx);
		
		//주소정보 불러오기
		MemberDto addrList = teachersService.pickKidsAddrCard(idx);
		
		List<CommonOpDto> d_list = commonOpService.k_date_opList();
		List<CommonOpDto> ts_list = commonOpService.k_time_start_opList();
		List<CommonOpDto> te_list = commonOpService.k_time_end_opList();

		mav.addObject("addrList", addrList);
		mav.addObject("k_dto", mkList);
		mav.addObject("d_list", d_list);
		mav.addObject("ts_list", ts_list);
		mav.addObject("te_list", te_list);
		mav.setViewName("findTeacher/pickKidsCard");

		return mav;
	}

	//아이카드 추가시 정보 불러오기 메소드
	@RequestMapping(value = "/makingKidCard.do")
	public ModelAndView showMakeKidcard() {

		List<CommonOpDto> k_list = commonOpService.ktendency(); //아이성향
		List<CommonOpDto> care_list = commonOpService.k_care_type(); //돌봄분야

		ModelAndView mav = new ModelAndView();
		mav.addObject("k_list", k_list);
		mav.addObject("care_list", care_list);
		mav.setViewName("findTeacher/makeKidsCard");

		return mav;
	}


	// 찐또메이크 아이카드 등록
	@RequestMapping("/makeKidsCard.do")
	public ModelAndView makeKidCard(KidDto dto, HttpSession session) {

		System.out.println("====아이카드 추가 등록 컨트롤러 진입=====" + dto);

		int result = teachersService.makeKCard(dto);
		
		String[] careTypeList = dto.getK_care_type().split(",");
		for (String careType : careTypeList) {
			dto.setKids_idx(dto.getD_kidcard_idx());
			dto.setCare_type(careType);
			dto.setRegId((String)session.getAttribute("saveId"));
			dto.setUpdId((String)session.getAttribute("saveId"));
			teachersService.makeKCareType(dto);
		}

	// 아이카드 등록 메서드
	@RequestMapping("/reserveCard.do")
	public ModelAndView makeReserveCard(ReserveDto reserveCard) {

		int result = teachersService.reserveCard(reserveCard);


		String msg = result > 0 ? "아이카드가 정상적으로 등록되었습니다!" : "아이카드 등록에 실패하셨습니다.";

		ModelAndView mav = new ModelAndView();

		mav.addObject("msg", msg);
		mav.setViewName("findTeacher/teachersMsg");

		return mav;
	}

	@RequestMapping("/modalEx.do")
	public String modalEx() {
		return "findTeacher/modalEx";
	}

	// 선생님 카드 상세 정보
	@RequestMapping("/teacherInfo.do")
	public ModelAndView teacherInfo(
			@RequestParam(value = "idx", defaultValue = "0") int idx) {

		System.out.println("###INFO### >>>>>>>>>> 샘 카드 상세 정보 : " + idx);
		
		FindTeacherJoinDto t_dto = teachersService.teacherInfo(idx);
		System.out.println("sam info controller ==="+t_dto);
		ModelAndView mav = new ModelAndView();
		
		if (t_dto != null) {		
			mav.addObject("t_dto", t_dto);
			mav.setViewName("findTeacher/teacherInfo");
		}else {
			mav.addObject("msg", "잘못된 접근 또는 삭제된 게시글 입니다.");
			mav.setViewName("findTeacher/teachersMsg");
		}
		
		return mav;
	}
	
	//Update Address do
//	@RequestMapping("/updateAddr.do")
//	public ModelAndView doUpdateAddr(MemberDto dto) {
//
//		//test code
//		System.out.println(":::::주소업데이트 컨트롤러 진입:::::" + dto);
//
//		int result = findTeachersService.updateAddr(dto);
//		String msg = result > 0 ? "주소 수정 완료!" : "주소 수정 실패";
//
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("msg", msg);
//		mav.setViewName("findTeacher/teachersMsg");
//
//		return mav;
//	}
	 
}
