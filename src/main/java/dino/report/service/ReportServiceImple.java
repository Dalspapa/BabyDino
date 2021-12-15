package dino.report.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dino.dto.CommonOpDto;
import dino.dto.ReportDto;
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
	
	/*:::::::동현 작업 시작::::::::::*/
	public List<ReportDto> reportList(int cp, int ls){
		int start = (cp-1)*ls+1;
		int end = cp*ls;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);

		List<ReportDto> reportlist = reportDao.reportList(map);

		return reportlist;
	}
	
	//페이징 처리
	public int getTotalCntReport() {
		int count = reportDao.getTotalCntReport();
		return count;
	}
	/*:::::::동현 작업 끝::::::::::*/
	
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

