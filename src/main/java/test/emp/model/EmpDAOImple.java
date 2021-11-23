package test.emp.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class EmpDAOImple implements EmpDAO {

	//내가쓸 자원 "있다" 멤버변수로 선언해서 사용.
	private SqlSessionTemplate sqlMap;
	
	//생성자 주입방법 오토라이어드 대신 사용
	public EmpDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	//쿼리수행.
	public int empAdd(EmpDTO dto) {
		int count = sqlMap.insert("empInsert", dto);
		return count;
	}
	
	public int empDel(String name) {
		int count = sqlMap.delete("empDelete", name);
		return count;
	}
	
	public List<EmpDTO> empAllList() {
		List<EmpDTO> list = sqlMap.selectList("empAllList");
		return list;
	}
	
	public EmpDTO empUpdateForm(int idx) {
		EmpDTO dto = sqlMap.selectOne("empSearch", idx);
		return dto;
	}
	
	public int empUpdate(EmpDTO dto) {
		int count = sqlMap.update("empUpdate", dto);
		return count;
	}

}
