package dino.teachermypage.model;

import org.mybatis.spring.SqlSessionTemplate;

public class TeacherMyPageDaoImpl implements TeacherMyPageDao {
	
	private SqlSessionTemplate sqlMap;
	
	public TeacherMyPageDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	//선생님 프로필
	public TeacherMyPageDto teacherProfile(int idx) {
		
		TeacherMyPageDto tProDto = sqlMap.selectOne("", idx);
		
		return tProDto;
	}
	
	
}
