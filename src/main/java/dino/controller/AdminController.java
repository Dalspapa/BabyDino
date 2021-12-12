package dino.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.adminmypage.service.AdminService;
import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReserveDto;
import dino.member.service.MemberService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	//회원관리로 이동
	@RequestMapping("/memberManagement.do")
	public ModelAndView memberManageMent() {
		List<MemberDto> list = adminService.memberManagement();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("adminMypage/memberManagement");
		return mav;
	}
	
	//선생님 정산
	@RequestMapping("/settlement.do")
	public ModelAndView settlement() {
		List<ReserveDto> c_list = adminService.teacherCost();
		//테스트코드
		System.out.println("선생님 정산 컨트롤러 >>>>>>>>>>>>>" + c_list);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("c_list" , c_list);
		mav.setViewName("adminMypage/settlement");
		return mav;
	}
	
	//기능편집
	@RequestMapping("/functionEdit.do")
	public ModelAndView functionEdit() {
		List<CommonOpDto> p_list = adminService.pcancel();
		List<CommonOpDto> t_list = adminService.tcancel();
		List<CommonOpDto> c_list = adminService.careList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("p_list",p_list);
		mav.addObject("t_list",t_list);
		mav.addObject("c_list",c_list);
		mav.setViewName("adminMypage/functionEdit");
		return mav;
	}
	
	//기능편집-부모님 사유 삭제
	@RequestMapping("/parentDelete.do")
	public ModelAndView parentDelete(String op) {
		//테스트코드
		System.out.println("delete op ///////////////"+op);
		int result = adminService.parentDelete(op);
		String msg = result > 0 ? "부모님 사유 삭제 완료" : "부모님 사유 삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","functionEdit.do");
		mav.setViewName("adminMypage/adminMsg");
		
		return mav;
	}
	
	//기능편집-부모님 사유 페이지 이동
	@RequestMapping("/parentAddForm.do")
	public String parentAddForm() {
		return "adminMypage/parentsReason";
	}
	
	//부모님 사유 추가
	@RequestMapping("/parentAdd.do")
	public ModelAndView parentAdd(CommonOpDto dto) {
		//테스트코드
		System.out.println(dto.getOp()+"//////"+dto.getC_introduce());
		int result = adminService.parentAdd(dto);
		String msg = result >0 ? "사유 추가 성공 ":"사유 추가 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","functionEdit.do");
		mav.setViewName("adminMypage/adminMsg");
		return mav;
	}
	
	//기능편집-선생님 사유 페이지로 이동
	@RequestMapping("/teacherAddForm.do")
	public String teacherAddForm() {
		return "adminMypage/teacherReason";
	}
	
	//선생님 사유 추가
	@RequestMapping("/teacherAdd.do")
	public ModelAndView teacherAdd(CommonOpDto dto) {
		//testcode
		System.out.println(dto.getOp()+"이거 컨트롤러");
		int result = adminService.teacherAdd(dto);
		String msg = result > 0 ? "선생님 사유 추가 성공":"선생님 사유 추가 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","functionEdit.do");
		mav.setViewName("adminMypage/adminMsg");
		return mav;
	}
	
	//선생님 사유 삭제
	@RequestMapping("/teacherDelete.do")
	public ModelAndView teacherDelete(String op) {
		//testcode
		System.out.println("delete op//선생님"+op);
		int result = adminService.teacherDelete(op);
		String msg = result > 0? "선생님 사유 삭제 완료":"선생님 사유 삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","functionEdit.do");
		mav.setViewName("adminMypage/adminMsg");
		return mav;
	}
	
	//돌봄분야 추가하는 폼 페이지로 이동
		@RequestMapping("/careAddForm.do")
		public String careAddForm() {
			return "adminMypage/careAdd";
		}
	
	//돌봄분야추가하기
	@RequestMapping("/careAdd.do")
	public ModelAndView careAdd(CommonOpDto dto) {
		//testcode
		System.out.println(dto.getOp()+"돌봄분야 컨트롤러");
		int result = adminService.careAdd(dto);
		String msg = result > 0 ? "돌봄분야 추가 성공":"돌봄분야 추가 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","functionEdit.do");
		mav.setViewName("adminMypage/adminMsg");
		return mav;
	}
	
	//돌봄분야 삭제
	@RequestMapping("/careDelete.do")
	public ModelAndView careDelete(String op) {
		//testcode
		System.out.println("careDel"+op);
		int result = adminService.careDel(op);
		String msg = result > 0 ?"돌봄분야 삭제 성공":"돌봄분야 삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl","functionEdit.do");
		mav.setViewName("adminMypage/adminMsg");
		return mav;
	}
	
	//회원 이미지 테이블(수정예정)
	@RequestMapping("/memberImg.do")
	public String memberImg() {
		return "adminMypage/memberImgTable";
	}
	
}