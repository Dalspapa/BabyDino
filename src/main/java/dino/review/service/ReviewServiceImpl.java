package dino.review.service;

import java.util.List;

import dino.dto.ReviewDto;
import dino.review.model.ReviewDao;

public class ReviewServiceImpl implements ReviewService {

	private ReviewDao reviewDao;

	public ReviewDao getReviewDao() {
		return reviewDao;
	}

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	public List<ReviewDto> reviewList() {
		List<ReviewDto> reviewList = reviewDao.reviewList();
		return reviewList;
	}

	public int writeReview(ReviewDto dto) {
		int result=reviewDao.writeReview(dto);
		return result;
	}
}
