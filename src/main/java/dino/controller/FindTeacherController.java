package dino.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dino.dto.CommonOpDto;
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
	
	 //test code 
	 System.out.println("샘목록 컨트롤ㄹ러======진입======");
	
	 List<FindTeacherJoinDto> t_List = teachersService.teacherList();
	 ModelAndView mav = new ModelAndView(); 
	 mav.addObject("t_List", t_List);
	 mav.setViewName("findTeacher/findTeacher");
	
	 return mav;
	 }


	//나의 아이카드 리스트 출력 메소드
	@RequestMapping("/pickKidsCard.do")
	public ModelAndView showPickKidsCard(
			@RequestParam(value = "idx", defaultValue = "0") int idx) {

		// test
		System.out.println("======아이카드리스트 출력 컨틀롤러 진입======" + idx);

		ModelAndView mav = new ModelAndView();

		MemberDto addrList = teachersService.pickKidsAddrCard(idx);
		List<KidDto> mkList = teachersService.pickKidsCard(idx);
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

		// test Code
		System.out.println("====아이카드 추가 페이지 돌봄분야 출력  컨트롤러 진입===");

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
	public ModelAndView makeKidCard(KidDto dto) {

		System.out.println("====아이카드 추가 등록 컨트롤러 진입=====" + dto);

		int result = teachersService.makeKCard(dto);

		String msg = result > 0 ? "아이카드가 정상적으로 등록되었습니다!" : "아이카드 등록에 실패하셨습니다.";

		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("findTeacher/teachersMsg");

		return mav;
	}


	/////////////////////문제없음////////////////////////////////////////


	// Insert reserve Kid Card
		@RequestMapping("/reserveCard.do")
		public ModelAndView makeReserveCard(ReserveDto reserveCard) {

			System.out.println("예약테이블에 올라 갈 수 있음 ?" + reserveCard);
//			List result = new ArrayList();
//			result = findTeachersService.reserveCard(vo);
			int result = teachersService.reserveCard(reserveCard);

//			int addrUpdate = (Integer) result.get(0);
//			int reserveInsert = (Integer) result.get(1);

//			String msgUpdate = addrUpdate > 0 ? "주소수정 성공" : "주소 수정 실패";
//			System.out.println(msgUpdate);
			String msg = result > 0 ? "아이카드가 정상적으로 등록되었습니다!" : "아이카드 등록에 실패하셨습니다.";

			ModelAndView mav = new ModelAndView();

			mav.addObject("msg", msg);
			mav.setViewName("findTeacher/teachersMsg");

			return mav;
		}

	//Update Address Go
	//현재 하드코딩. 파라미터값 받아야 함.
	@RequestMapping("/makingAddrCard.do")
	public ModelAndView showUpdateAddr(
			@RequestParam(value = "idx" , defaultValue = "0")int idx) {

		//test code
		System.out.println(">>>>>>>>>주소 업데이트 폼 컨트롤러 진입<<<<<<<<" + idx);

		MemberDto dto = teachersService.addrUpForm(idx);

		ModelAndView mav= new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("findTeacher/updateAddr");

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


	@RequestMapping("/makeReserveCard.do")
	public String makeReserveCard() {

		return "findTeacher/makeReserveCard";
	}


	/*
	 * // set kid img
	 *
	 * @RequestMapping(value = "/makeKidCard.do", method = RequestMethod.POST)
	 * public ResponseEntity<?> makeKidCard(KidDto dto, Common_ImgDto imgDto){
	 *
	 * // test code System.out.println(">>>>>컨트롤러 진입<<<<<<");
	 *
	 * HashMap<String, Object> result = new HashMap<String, Object>(); boolean
	 * success = false;
	 *
	 * List<MultipartFile> imgFiles = new ArrayList<MultipartFile>(); imgFiles =
	 * dto.getkImg();
	 *
	 * if (imgDto.getC_imgpath() == null || imgDto.getC_imgpath().equals("")) {
	 * imgDto.setC_imgpath("kid.png"); }
	 *
	 * String dirPath = servletContext.getRealPath("/resources");
	 *
	 * try { findTeachersService.makeKCard(dto, imgDto, imgFiles, dirPath); success
	 * = true; } catch (Exception e) { System.out.println("요류입니다." +
	 * e.getMessage()); };
	 *
	 * int setImg = findTeachersService.kSetImg(imgDto);
	 *
	 * if(setImg != 1) { result.put("fail", false); }else { result.put("success",
	 * success);
	 *
	 * } result.put("success", success);
	 *
	 * return ResponseEntity.ok(result); }
	 */

	/*
	 * //get img path
	 *
	 * @RequestMapping("/getKidImg.do") public ModelAndView getImg(int d_member_idx)
	 * {
	 *
	 * List<Common_ImgDto> resultImg = findTeachersService.imgpath(d_member_idx);
	 *
	 * String [] imgName = {};
	 *
	 * for(int i = 0; i < resultImg.size(); i++) { //test code
	 * System.out.println("리스트로 가져온 이미지" + resultImg.get(i).getC_imgpath()); imgName
	 * = resultImg.get(i).getC_imgpath().split(","); } //test code
	 * System.out.println(imgName + ">>> 이미지 ㅎㅇㅇㅇㅇㅇ <<<");
	 *
	 * ModelAndView mav = new ModelAndView(); mav.addObject("imgName", imgName);
	 * mav.setViewName("findTeacher/findteacher");
	 *
	 * return mav; }
	 */

	@RequestMapping("/modalEx.do")
	public String modalEx() {
		return "findTeacher/modalEx";
	}

	// 선생님 카드 상세 정보(teacher card content)
	@RequestMapping("/teacherInfo.do")
	public ModelAndView teacherInfo(@RequestParam(value = "idx", defaultValue = "0") int idx) {

		ModelAndView mav = new ModelAndView();

		FindTeacherJoinDto t_dto = teachersService.teacherInfo(idx);
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
