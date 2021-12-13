package dino.commonmember.model;

import org.mybatis.spring.SqlSessionTemplate;

public class CommonMemberDaoImpl implements CommonMemberDao {

	private SqlSessionTemplate sqlMap;

	public CommonMemberDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	
	
}
