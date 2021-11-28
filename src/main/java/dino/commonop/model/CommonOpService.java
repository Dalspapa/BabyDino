package dino.commonop.model;

import java.util.*;

public interface CommonOpService {

	public List<CommonOpDTO> t_job_opList();
	public List<CommonOpDTO> k_type_opList();
	public List<CommonOpDTO> t_care_opList();
	public List<CommonOpDTO> t_date_opList();
	public List<CommonOpDTO> t_time_opList();
	public List<CommonOpDTO> t_bank_opList();
}
