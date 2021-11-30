package dino.commonop.model;

import java.util.*;

import dino.Dto.common_OptionDto;

public interface CommonOpDao {

	//Make a TeacherCard
	public List<common_OptionDto> t_job_opList();
	public List<common_OptionDto> k_type_opList();
	public List<common_OptionDto> t_care_opList();
	public List<common_OptionDto> t_date_opList();
	public List<common_OptionDto> t_time_opList();
	public List<common_OptionDto> t_bank_opList();
	
	//Make a KidsCard
	public List<common_OptionDto> ktendency(Map map);
	
}
