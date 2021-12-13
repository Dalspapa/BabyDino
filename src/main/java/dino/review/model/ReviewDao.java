package dino.review.model;

import java.util.List;

import dino.dto.ReviewDto;


public interface ReviewDao {

	//내가 작성한 리뷰
	public List<ReviewDto> reviewList(ReviewDto dto);

	//리뷰작성
	public int writeReview(ReviewDto dto);
}
