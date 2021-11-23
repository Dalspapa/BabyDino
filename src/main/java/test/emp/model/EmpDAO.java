package test.emp.model;

import java.util.List;

public interface EmpDAO {
	
	public int empAdd(EmpDTO dto);
	
	public int empDel(String name);
	
	public List<EmpDTO> empAllList(); //jstl 쓰는 순간부터 제네릭<> 쓰는 게 사실 의미 없음.
	
	public EmpDTO empUpdateForm(int idx);
	
	public int empUpdate(EmpDTO dto);

}
