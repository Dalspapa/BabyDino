package dino.report.service;

import java.util.List;

import dino.dto.CommonOpDto;
import dino.dto.ReportDto;

public interface ReportService {
	
	//report Write
	public int reportWrite(ReportDto reportDto);
	
	/*:::::::동현 작업 시작::::::::::*/
	//report List
	public List<ReportDto> reportList(int cp, int ls);
	
	public int getTotalCntReport();
	/*:::::::동현 작업 끝::::::::::*/
	
	//report Content
	public ReportDto reportContent(int idx);

	//report Delete
	public int reportDelete(int idx);

	//report Update
	public int reportUpdate(ReportDto dto);

	public ReportDto reportUpdateForm(int idx);

	public List<CommonOpDto> reportOpList();
}

