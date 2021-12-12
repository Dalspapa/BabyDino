package dino.review.model;

import java.util.List;

import dino.dto.ReviewDto;


public interface ReviewDao {

	//리뷰리스트
	public List<ReviewDto> reviewList();
	//리뷰작성
	public int writeReview(ReviewDto dto);
}
