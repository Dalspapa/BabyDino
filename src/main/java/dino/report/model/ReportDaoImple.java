package dino.report.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.CommonOpDto;
import dino.dto.ReportDto;

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
	/*:::::::동현 작업 시작::::::::::*/
	
	public List<ReportDto> reportList(Map map) {
		List<ReportDto> reportlist = sqlMap.selectList("reportList", map);
		return reportlist;
	}

	// 페이징 처리
	public int getTotalCntReport() {
		int count = sqlMap.selectOne("totalCntReport");
		return count;
			}
	/*:::::::동현 작업 끝::::::::::*/
	
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
