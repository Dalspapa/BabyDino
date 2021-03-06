package dino.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dino.adminmypage.model.AdminDto;
import dino.adminmypage.service.AdminService;
import dino.dto.CommonOpDto;
import dino.dto.MemberDto;
import dino.dto.ReportDto;
import dino.dto.ReserveDto;
import dino.findkids.service.*;
										 

@Controller
public class AdminController {

	public static final String IMGPATH = "C:\\upload\\";
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private FindKidsService findKidsService;
	
	String msg = "";
	String goUrl = "";
	
	/*:::::::동현 작업 시작::::::::::*/
	@RequestMapping("/reportManagement.do")
	public ModelAndView reportManagement(
			@RequestParam(value = "cp", defaultValue = "1")int cp) {
		int listSize = 10;
		int pageSize = 5;
		int totalCnt = adminService.getTotalCntReport();
		
		List<ReportDto> reportManagement = adminService.reportList(cp, listSize);
		String pageStr = pagination.PageModule.makePage("reportManagement.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("reportManagement",reportManagement);
		mav.setViewName("adminMypage/reportManagement");
		
		return mav;
	}
	
	/*:::::::동현 작업 끝::::::::::*/
	
	//관리자가 강제탈퇴버튼 누르면 연결되는 메서드
	@RequestMapping("/adminMemberOut.do")
	public ModelAndView adminMemberOut(@RequestParam("idx") int idx) {
		
		System.out.println("리포트 삭제 idx "+idx);
		int result = adminService.adminMemberOut(idx);
		msg = result > 0? "강제탈퇴 처리 되었습니다." : "강제탈퇴처리가 이루어지지 않았습니다.";
		goUrl = "reportManagement.do";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("goUrl", goUrl);
		mav.setViewName("adminMypage/adminMsg");
		return mav;
	}
	
	/*:::::::동현 작업 시작::::::::*/
	//회원관리로 이동
	@RequestMapping("/memberManagement.do")
	public ModelAndView memberManageMent(
			@RequestParam(value = "cp", defaultValue = "1")int cp) {
		int listSize = 10;
		int pageSize = 5;
		int totalCnt = adminService.getTotalCnt();
		
		List<MemberDto> list = adminService.memberManagement(cp, listSize);
		String pageStr = pagination.PageModule.makePage("memberManagement.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("list", list);
		mav.setViewName("adminMypage/memberManagement");
		return mav;
	}
	/*:::::::동현 작업 끝::::::::*/
	
	//선생님 정산
	@RequestMapping("/settlement.do")
	public ModelAndView settlement() {
		List<ReserveDto> cost_list = adminService.teacherCost();
		//테스트코드
		System.out.println("선생님 정산 컨트롤러 >>>>>>>>>>>>>" + cost_list);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("cost_list" , cost_list);
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
	/////////////////주호
		//선생님 필수검증(수정예정)
	@RequestMapping("/teacherCertification.do")
	public ModelAndView teacherCertification() {
		
		List<AdminDto> t_list = adminService.teacherCertification();
		
		ModelAndView mav = new ModelAndView();
		
		File f = new File("C:/teachercert");
		File files[] = f.listFiles();
		mav.addObject("files", files);		
		
		
		mav.addObject("t_list",t_list);
		mav.setViewName("adminMypage/teacherCertification");
		return mav;
	}
	
	@RequestMapping("/down.do")
	public ModelAndView fileDownload(@RequestParam("fname") String fname) {
		
		ModelAndView mav = new ModelAndView();
		File f = new File(IMGPATH + fname);
		mav.addObject("downloadFile", f);
		mav.setViewName("fileDown");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/teaCertUpd.do", method = RequestMethod.POST)
	public ResponseEntity<?> teaCertUpd(@RequestParam("d_member_idx") int idx,
			@RequestParam("id") String id, HttpServletRequest request){
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		

		int rst = adminService.teaCertUpd(idx);
		System.out.println("controller==="+idx);
		int updType = findKidsService.UpdGrade(id);
		System.out.println("contrtoller====="+id);
		request.getSession().setAttribute("saveMemberType", updType);
		
		result.put("result", rst);

		return ResponseEntity.ok(result);
	}

	
	
	
	/////////////////주호 끝 
	
}
