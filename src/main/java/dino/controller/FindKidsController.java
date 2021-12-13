package dino.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dino.commonop.service.CommonOpService;
import dino.dto.CommonOpDto;
import dino.dto.Common_ImgDto;
import dino.dto.MakeTCardDto;
import dino.dto.MemberDto;
import dino.findkids.model.FindKidsJoinDto;
import dino.findkids.service.FindKidsService;

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

	/**
	 * 아이찾기화면
	 * @return
	 */
	@RequestMapping("/findKids/form.do")
	public ModelAndView findKidsForm() {
		
		//돌봄분야 리스트 출력
		List<CommonOpDto> c_list = commonOpService.t_care_opList();
		System.out.println("돌봄분야 >>>>>>>>>>" + c_list);
		
		ModelAndView mav = new ModelAndView();
		
		//은사작업 idx 채워주기
		
		mav.addObject("c_list", c_list);
		mav.setViewName("findKids/findKids");
		return mav;
	}
	
	/**
	 * 아이찾기 조회
	 * @param searchKids
	 * @return
	 */
	@RequestMapping(value = "/findKids/list.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView getKidsList(@RequestBody FindKidsJoinDto searchKids) {
		
		//돌봄분야 리스트 출력
		List<CommonOpDto> c_list = commonOpService.t_care_opList();
		
		//아이검색
		List<FindKidsJoinDto> KidsList = findKidsService.searchKids(searchKids);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("c_list", c_list);
		mav.addObject("KidsList", KidsList);
		mav.setViewName("findKids/findKidsList");
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

	//make Teacher Card
	@RequestMapping(value = "/makeTeacherCard.do", method = RequestMethod.POST)
	public ResponseEntity<?> makeTeacherCard(MakeTCardDto dto, Common_ImgDto imgDto, HttpServletRequest request, MemberDto mdto, HttpSession session) {

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
			String saveIdx = String.valueOf(request.getSession().getAttribute("saveIdx"));
			if(StringUtils.isEmpty(saveIdx)) {
				throw new IllegalStateException("로그인상태가 아닙니다.");
			}
			dto.setIdx(Integer.parseInt(saveIdx));

			findKidsService.makeTCard(dto, imgFiles, dirPath, imgDto, request);
			result.put("fail", false);
			success = true;
		} catch (Exception e) {
			System.out.println("오류발생. " + e.getMessage());
			result.put("success", success);
		};

		int setImg = findKidsService.tSetImg(imgDto);
		if( setImg != 1 ) {
			result.put("fail", false);
		} else {
			result.put("success", success);
		}

		System.out.println("인증후 그레이드 6 수정 전");
		//검증 후 카드를 만든 선생님 grade update
		String idx = String.valueOf(request.getSession().getAttribute("saveIdx"));
		if(StringUtils.isEmpty(idx)) {
			throw new IllegalStateException("로그인 상태가 아닙니다.");
		}
		mdto.setIdx(Integer.parseInt(idx));

		mdto.setMember_type(6);
		int rst = findKidsService.updateTeacherGrade(mdto);
		if(rst <= 0) {
			throw new IllegalStateException("선생님 카드 등록시 오류가 발생하였습니다.");
		}
		System.out.println("인증후 그레이드 6 수정 후========");

		//int setImg = findKidsService.tSetImg(imgDto);
//		if( setImg != 1 ) {
//			result.put("fail", false);
//		} else {
//			result.put("success", success);
//		}
		String id = String.valueOf(request.getSession().getAttribute("saveId"));
		if(StringUtils.isEmpty(id)) {
			throw new IllegalStateException("로그인 상태가 아닙니다.");
		}

		int updMType = findKidsService.UpdGrade(id);
		System.out.println("수정된 멤버타입"+updMType);
		session.setAttribute("saveMemberType", updMType);
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
	@GetMapping(value = "/kidsContent.do")
	public ModelAndView kidsContent(@RequestParam("idx")int idx) {

		System.out.println("parameter====="+idx);

		FindKidsJoinDto kidInfoDto = findKidsService.kidContent(idx);
		System.out.println("controller=====" + kidInfoDto.toString());
		ModelAndView mav = new ModelAndView();
		System.out.println("컨트롤러로 가져온 dto 정보"+kidInfoDto.getK_care_type());

		if (kidInfoDto != null) {
			mav.addObject("kidInfoDto", kidInfoDto);
			mav.setViewName("findKids/kidsContent");
		}
			mav.addObject("msg", "매칭된 게시물 또는 삭제된 게시물입니다.");
			mav.setViewName("findKids/kidsContent");

		return mav;
	}

	/**
	 * 선생님 인증처리
	 * author: 이은사
	 * return: ModelAndView
	 * since: 2021. 12. 7.
	 */
	@RequestMapping(value="cert.do", method = RequestMethod.POST)
	public ModelAndView teacherCert(MemberDto teacher, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		String idx = String.valueOf(request.getSession().getAttribute("saveIdx"));
		if(StringUtils.isEmpty(idx)) {
			throw new IllegalStateException("로그인 상태가 아닙니다.");
		}
		teacher.setIdx(Integer.parseInt(idx));

		teacher.setMember_type(5);
		int rst = findKidsService.updateTeacherGrade(teacher);
		System.out.println("컨트롤러에 teacher ====="+rst);
		if(rst <= 0) {
			throw new IllegalStateException("선생님 등급 수정시 오류가 발생하였습니다.");
		}
		String id = String.valueOf(request.getSession().getAttribute("saveId"));
		if(StringUtils.isEmpty(id)) {
			throw new IllegalStateException("로그인 상태가 아닙니다.");
		}
		teacher.setId(id);
		int updMType = findKidsService.UpdGrade(teacher.getId());
		System.out.println("인증 된 선생님 세션에 그레이드 수정"+updMType);
		System.out.println("컨트롤러====="+updMType);
		request.getSession().setAttribute("saveMemberType", updMType);

		msg = "선생님 인증 요청이 완료되었습니다.\\n아이찾기 카테고리에서 선생님 등록을 해주세요~";
		System.out.println("컨트롤러 msg ========"+msg);
		goUrl = "main.do";
		mav.addObject("msg", msg);
		mav.addObject("goUrl", goUrl);
		mav.setViewName("findKids/kidsMsg");
		return mav;
	}




}

















