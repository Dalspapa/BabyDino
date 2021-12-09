package dino.commonop.model;

import java.util.*;

import dino.dto.*;

public interface CommonOpDao {

	//Make a TeacherCard
	public List<CommonOpDto> t_job_opList();
	public List<CommonOpDto> k_type_opList();
	public List<CommonOpDto> t_care_opList();
	public List<CommonOpDto> t_date_opList();
	public List<CommonOpDto> t_time_opList();
	public List<CommonOpDto> t_bank_opList();
	
	//Make a KidsCard
	public List<CommonOpDto> ktendency();

	//reportType 
	public List<CommonOpDto> reportType();
	
	//공지사항
	public List<CommonOpDto> noticeList();
	
	//자주 묻는 질문(회원관련)
	public List<CommonOpDto> qna();
	
	//자주 묻는 질문(정부지원관련)
	public List<CommonOpDto> government();
	
	//자주 묻는 질문(정부지원관련)
	public List<CommonOpDto> pay();
	
	
}
