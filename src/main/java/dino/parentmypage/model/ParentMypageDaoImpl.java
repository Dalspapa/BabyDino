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

	//돌봄 진행 상태
	public KidDto caringInfo(String r_idx) {
		KidDto dto = sqlMap.selectOne("caringInfo", r_idx);
		return dto;
	}
}
