package dino.report.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.Dto.CommonOpDto;
import dino.Dto.ReportDto;

public class ReportDaoImple implements ReportDao {

	private SqlSessionTemplate sqlMap;
	
	public ReportDaoImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int reportWrite(ReportDto reportDto) {
		int count = sqlMap.insert("reportInsert", reportDto);
		return count;
	}
	
	public List<ReportDto> reportList() {
		List<ReportDto> reportlist = sqlMap.selectList("reportList"); 
		return reportlist;
	}
	
	public ReportDto reportContent(int idx) {
		ReportDto dto = sqlMap.selectOne("reportContent",idx);
		return dto;
	}
	
	public int reportDelete(int idx) {
		int result = sqlMap.delete("reportDelete",idx);
		return result;
	}
	public int reportUpdate(ReportDto dto) {
		int count = sqlMap.update("reportUpdate",dto);
		return count ;
	}	
	
	public List<CommonOpDto> reportOpList() {
		List<CommonOpDto> reportOpList = sqlMap.selectList("reportOpList");
		return reportOpList;
	}
	
	
	
	
	
}









