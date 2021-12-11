package dino.report.service;

import java.util.List;

import dino.Dto.CommonOpDto;
import dino.Dto.ReportDto;
import dino.report.model.ReportDao;

public class ReportServiceImple implements ReportService {

	private ReportDao reportDao;
	
	public ReportDao getReportDao() {
		return reportDao;
	}

	public void setReportDao(ReportDao reportDao) {
		this.reportDao = reportDao;
	}

	public int reportWrite(ReportDto reportDto) {
		int count = reportDao.reportWrite(reportDto);
		return count;
	}
	
	public List<ReportDto> reportList(){
		
		List<ReportDto> reportlist = reportDao.reportList();
		
		return reportlist;
	}
	
	public ReportDto reportContent(int idx) {
		ReportDto dto = reportDao.reportContent(idx);
		if(dto!=null) {
			dto.setRp_content(dto.getRp_content().replaceAll("\n","<br>"));
		}
		return dto;
	}
	
	public int reportDelete(int idx) {
		int result = reportDao.reportDelete(idx);
		return result;
	}
	
	public int reportUpdate(ReportDto dto) {
		 int result = reportDao.reportUpdate(dto);
			return result;
	}
	
	public ReportDto reportUpdateForm(int idx) {
		ReportDto dto = reportDao.reportContent(idx);
		if(dto != null) {
			dto.setRp_content(dto.getRp_content().replaceAll("<br>", "\n"));
		}
		return dto;
	}
	
	public List<CommonOpDto> reportOpList() {
		
		List<CommonOpDto> reportOpList = reportDao.reportOpList();
		
		return reportOpList;
	}
	
}

