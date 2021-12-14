package dino.review.service;

import java.util.List;

import dino.dto.ReviewDto;
import dino.review.model.ReviewDao;
import dino.review.model.ReviewJoinDto;

public class ReviewServiceImpl implements ReviewService {

	private ReviewDao reviewDao;

	public ReviewDao getReviewDao() {
		return reviewDao;
	}

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	//부모님이 작성한 리뷰
	public List<ReviewJoinDto> reviewList(int idx) {
		List<ReviewJoinDto> myreview = reviewDao.reviewList(idx);
		return myreview;
	}

	//부모님이 받은 리뷰
	public List<ReviewJoinDto> getReviewList(int idx) {
		List<ReviewJoinDto> getreview = reviewDao.getReviewList(idx);
		return getreview;
	}

	//선생님이 작성한 리뷰
	public List<ReviewJoinDto> t_reviewList(int idx) {
		List<ReviewJoinDto> t_myreview = reviewDao.t_reviewList(idx);
		return t_myreview;
	}

	//선생님이 받은 리뷰
	public List<ReviewJoinDto> t_getReviewList(int idx) {
		List<ReviewJoinDto> t_getreview = reviewDao.t_getReviewList(idx);
		return t_getreview;
	}

	//리뷰 작성
	public int writeReview(ReviewDto dto) {
		int result=reviewDao.writeReview(dto);
		return result;
	}
}
