package dino.report.model;

import java.util.List;
import java.util.Map;

import dino.dto.CommonOpDto;
import dino.dto.ReportDto;

public interface ReportDao {

	//report Write
	public int reportWrite(ReportDto reportDto);
	
	/*222222222동현 작업 시작22222222222*/
	//report List
	public List<ReportDto> reportList(Map map);

	public int getTotalCntReport();
	
	/*222222222동현 작업 끝22222222222*/
	//report Content
	public ReportDto reportContent(int idx);

	//report Delete
	public int reportDelete(int idx);

	//report Update
	public int reportUpdate(ReportDto dto);

	//report Write.jsp < report type of common table category
	public List<CommonOpDto> reportOpList();

}
