package dino.parentmypage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

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
}

