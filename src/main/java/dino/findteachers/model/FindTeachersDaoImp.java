package dino.findteachers.model;

import org.mybatis.spring.SqlSessionTemplate;

public class FindTeachersDaoImp implements FindTeachersDao {
	
	private SqlSessionTemplate sqlMap;

	public FindTeachersDaoImp(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public TeacherInfoDto teacherInfo(int idx) {
		
		TeacherInfoDto t_dto = sqlMap.selectOne("teacherInfo", idx);
		
		return t_dto;
	}
}
