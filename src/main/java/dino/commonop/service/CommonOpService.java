package dino.commonop.service;

import java.util.*;

import dino.Dto.CommonOpDto;

public interface CommonOpService {

	//Make a TeacherCard
	public List<CommonOpDto> t_job_opList();
	public List<CommonOpDto> k_type_opList();
	public List<CommonOpDto> t_care_opList();
	public List<CommonOpDto> t_date_opList();
	public List<CommonOpDto> t_time_opList();
	public List<CommonOpDto> t_bank_opList();
	
	//Make a KidsCard
	public List<CommonOpDto> ktendency();
}
