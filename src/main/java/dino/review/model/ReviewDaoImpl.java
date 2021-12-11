package dino.review.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.ReviewDto;

public class ReviewDaoImpl implements ReviewDao {

	private SqlSessionTemplate sqlMap;

	public ReviewDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<ReviewDto> reviewList() {
		List<ReviewDto> reviewList = sqlMap.selectList("reviewList");
		return reviewList;
	}

	public int writeReview(ReviewDto dto) {
		int result=sqlMap.insert("writeReview", dto);
		return result;
	}
}
