package dino.review.service;

import java.util.List;

import dino.dto.ReviewDto;

public interface ReviewService {

	public List<ReviewDto> reviewList();

	public int writeReview(ReviewDto dto);
}
