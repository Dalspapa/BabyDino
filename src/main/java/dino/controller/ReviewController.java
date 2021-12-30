package dino.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dino.dto.ReviewDto;
import dino.review.model.ReviewJoinDto;
import dino.review.service.ReviewService;
import dino.teachermypage.service.TeacherMyPageService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private TeacherMyPageService teacherMypageService;

	String goUrl = "";

	/**
	 * 부모님이 작성한 리뷰
	 * @param idx
	 * @return
	 */
	@RequestMapping(value="/reviewMain.do")
	public ModelAndView reviewMain(@RequestParam("idx")int idx) {
		List<ReviewJoinDto> myreview= reviewService.reviewList(idx);
		List<ReviewJoinDto> getreview= reviewService.getReviewList(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("myreview", myreview);
		mav.addObject("getreview", getreview);
		mav.setViewName("review/reviewMain");
		return mav;
	}

	/**
	 * 선생님이 작성한 리뷰
	 * @param idx
	 * @return
	 */
	@RequestMapping(value="/t_reviewMain.do")
	public ModelAndView t_reviewMain(@RequestParam("idx")int idx) {
		List<ReviewJoinDto> t_myreview= reviewService.t_reviewList(idx);
		List<ReviewJoinDto> t_getreview= reviewService.t_getReviewList(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("myreview", t_myreview);
		mav.addObject("getreview", t_getreview);
		mav.setViewName("review/reviewMain");
		return mav;
	}

	/**
	 * 리뷰 작성
	 * @return
	 */
	@RequestMapping(value="writeReviewForm.do")
	public String writeReviewForm() {
		return "review/writeReview";
	}

	/**
	 * 리뷰작성서브밋
	 * @param dto
	 * @return
	 */
	@RequestMapping(value="/writesubmit.do")
	public ModelAndView writeReview(ReviewDto dto, HttpSession session) {
		int result = reviewService.writeReview(dto);
		String msg = result > 0 ?"소중한 후기 감사합니다 !" : "후기 작성에 실패하였습니다. 다시 부탁드립니다.";
		
		ModelAndView mav = new ModelAndView();
		
		Map params = new HashMap<String, Object>();
		params.put("status", 7);
		params.put("reserveIdx", dto.getD_reserve_idx());
		
		int updateRst = teacherMypageService.statusUpd(params);
		mav.addObject("updateRst", updateRst);
		
		int idx = (Integer) session.getAttribute("saveIdx");
		int member_type = (Integer) session.getAttribute("saveMemberType");

		if( member_type == 2 || member_type == 8) {
			mav.addObject("goUrl","reviewMain.do?idx=" + idx);
		}else {
			mav.addObject("goUrl","t_reviewMain.do?idx=" + idx);
		}
		mav.addObject("msg",msg);
		mav.setViewName("review/reviewMsg");
		return mav;
	}
}
