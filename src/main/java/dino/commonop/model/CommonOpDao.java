package dino.commonop.model;

import java.util.*;

import dino.Dto.CommonOpDto;

public interface CommonOpDao {

	//Make a TeacherCard
	public List<CommonOpDto> t_job_opList();
	public List<CommonOpDto> k_type_opList();
	public List<CommonOpDto> t_care_opList();
	public List<CommonOpDto> t_date_opList();
	public List<CommonOpDto> t_time_opList();
	public List<CommonOpDto> t_bank_opList();
	
	//Make a KidsCard
	public List<CommonOpDto> ktendency(Map map);

	//reportType  gk..하.. 복붙 하지 말라 햇 죠 ..
	public List<CommonOpDto> reportType();
}
