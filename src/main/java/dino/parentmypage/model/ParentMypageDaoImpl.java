package dino.parentmypage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.KidDto;

public class ParentMypageDaoImpl implements ParentMypageDao {

	private SqlSessionTemplate sqlMap;

	public ParentMypageDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	//start

	public List<ParentMypageDto> proceedingMain() {
		List<ParentMypageDto> list = sqlMap.selectList("proceedingMain");
		return list;
	}

	//매칭된 돌봄 현황 페이지
	public ParentMypageDto caring(int idx) {
		ParentMypageDto dto = sqlMap.selectOne("caringPage",idx);
		return dto;
	}
}

