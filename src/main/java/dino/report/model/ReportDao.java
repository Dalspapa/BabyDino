package dino.report.model;

import java.util.List;

import dino.dto.CommonOpDto;
import dino.dto.ReportDto;

public interface ReportDao {

	//report Write
	public int reportWrite(ReportDto reportDto);
	
	//report List
	public List<ReportDto> reportList();
	
	//report Content
	public ReportDto reportContent(int idx);
	
	//report Delete
	public int reportDelete(int idx);
	
	//report Update
	public int reportUpdate(ReportDto dto);
	
	//report Write.jsp < report type of common table category
	public List<CommonOpDto> reportOpList();
	
}
