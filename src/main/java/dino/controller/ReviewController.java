package dino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dino.dto.ReviewDto;
import dino.review.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;

	//리뷰 보여지기 to do : 세션기준 파람값 받아서 조회 해야함.
	@RequestMapping("/reviewMain.do")
	public ModelAndView reviewMain() {

		List<ReviewDto> reviewList= reviewService.reviewList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewList", reviewList);
		mav.setViewName("review/reviewMain");

		return mav;
	}

	//리뷰작성하기
	@RequestMapping(value="writeReviewForm.do")
	public String writeReviewForm() {
		return "review/writeReview";
	}

	//리뷰작성서브밋
	@RequestMapping(value="/writesubmit.do")
	public ModelAndView writeReview(ReviewDto dto) {
		reviewService.writeReview(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("review/reviewMain");
		mav.
		return mav;
	}
}
