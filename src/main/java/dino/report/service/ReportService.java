package dino.report.service;

import java.util.List;

import dino.Dto.CommonOpDto;
import dino.Dto.ReportDto;

public interface ReportService {
	
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
	
	public ReportDto reportUpdateForm(int idx);
	
	public List<CommonOpDto> reportOpList();
}

