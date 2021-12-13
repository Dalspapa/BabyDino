package dino.parentmypage.model;

import java.sql.Date;

public class ParentMypageDto {

	//멤버테이블
	private int m_idx;
	private String id;
	private String name;
	private int gender;
	private int member_type;
	private String addr1;
	private String addr2;
	private String addr3;

	//선생님테이블
	private int t_idx;
	private int d_member_idx;
	private int job;
	private String kid_type;
	private String t_care_type;
	private String schedule_day;
	private String schedule_time;
	private int t_cost;
	private String t_introduce;
	private int cctvagree;
	private String t_sexcrime;
	private String career_experience;

	//아이카드테이블
	private int k_idx;
	private String k_name;
	private int k_gender;
	private Date k_birth;
	private String k_introduce;
	private String k_care_type;
	private String k_tendency;
	private String teacher_type;
	private String k_require;

	//예약카드테이블
	private int r_idx;
	private int member_p_idx;
	private Date start_date;
	private Date end_date;
	private int r_cost;
	private int status;
	private Date match_date;
	private int cancle_reason;

	private String care_time;
	private String k_age;

	public ParentMypageDto() {
		super();
	}

	public ParentMypageDto(int m_idx, String id, String name, int gender, int member_type, String addr1, String addr2,
			String addr3, int t_idx, int d_member_idx, int job, String kid_type, String t_care_type,
			String schedule_day, String schedule_time, int t_cost, String t_introduce, int cctvagree, String t_sexcrime,
			String career_experience, int k_idx, String k_name, int k_gender, Date k_birth, String k_introduce,
			String k_care_type, String k_tendency, String teacher_type, String k_require, int r_idx, int member_p_idx,
			Date start_date, Date end_date, int r_cost, int status, Date match_date, int cancle_reason,
			String care_time) {
		super();
		this.m_idx = m_idx;
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.member_type = member_type;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.t_idx = t_idx;
		this.d_member_idx = d_member_idx;
		this.job = job;
		this.kid_type = kid_type;
		this.t_care_type = t_care_type;
		this.schedule_day = schedule_day;
		this.schedule_time = schedule_time;
		this.t_cost = t_cost;
		this.t_introduce = t_introduce;
		this.cctvagree = cctvagree;
		this.t_sexcrime = t_sexcrime;
		this.career_experience = career_experience;
		this.k_idx = k_idx;
		this.k_name = k_name;
		this.k_gender = k_gender;
		this.k_birth = k_birth;
		this.k_introduce = k_introduce;
		this.k_care_type = k_care_type;
		this.k_tendency = k_tendency;
		this.teacher_type = teacher_type;
		this.k_require = k_require;
		this.r_idx = r_idx;
		this.member_p_idx = member_p_idx;
		this.start_date = start_date;
		this.end_date = end_date;
		this.r_cost = r_cost;
		this.status = status;
		this.match_date = match_date;
		this.cancle_reason = cancle_reason;
		this.care_time = care_time;
	}


	public String getK_age() {
		return k_age;
	}

	public void setK_age(String k_age) {
		this.k_age = k_age;
	}

	public int getM_idx() {
		return m_idx;
	}

	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getMember_type() {
		return member_type;
	}

	public void setMember_type(int member_type) {
		this.member_type = member_type;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	public int getT_idx() {
		return t_idx;
	}

	public void setT_idx(int t_idx) {
		this.t_idx = t_idx;
	}

	public int getD_member_idx() {
		return d_member_idx;
	}

	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}

	public int getJob() {
		return job;
	}

	public void setJob(int job) {
		this.job = job;
	}

	public String getKid_type() {
		return kid_type;
	}

	public void setKid_type(String kid_type) {
		this.kid_type = kid_type;
	}

	public String getT_care_type() {
		return t_care_type;
	}

	public void setT_care_type(String t_care_type) {
		this.t_care_type = t_care_type;
	}

	public String getSchedule_day() {
		return schedule_day;
	}

	public void setSchedule_day(String schedule_day) {
		this.schedule_day = schedule_day;
	}

	public String getSchedule_time() {
		return schedule_time;
	}

	public void setSchedule_time(String schedule_time) {
		this.schedule_time = schedule_time;
	}

	public int getT_cost() {
		return t_cost;
	}

	public void setT_cost(int t_cost) {
		this.t_cost = t_cost;
	}

	public String getT_introduce() {
		return t_introduce;
	}

	public void setT_introduce(String t_introduce) {
		this.t_introduce = t_introduce;
	}

	public int getCctvagree() {
		return cctvagree;
	}

	public void setCctvagree(int cctvagree) {
		this.cctvagree = cctvagree;
	}

	public String getT_sexcrime() {
		return t_sexcrime;
	}

	public void setT_sexcrime(String t_sexcrime) {
		this.t_sexcrime = t_sexcrime;
	}

	public String getCareer_experience() {
		return career_experience;
	}

	public void setCareer_experience(String career_experience) {
		this.career_experience = career_experience;
	}

	public int getK_idx() {
		return k_idx;
	}

	public void setK_idx(int k_idx) {
		this.k_idx = k_idx;
	}

	public String getK_name() {
		return k_name;
	}

	public void setK_name(String k_name) {
		this.k_name = k_name;
	}

	public int getK_gender() {
		return k_gender;
	}

	public void setK_gender(int k_gender) {
		this.k_gender = k_gender;
	}

	public Date getK_birth() {
		return k_birth;
	}

	public void setK_birth(Date k_birth) {
		this.k_birth = k_birth;
	}

	public String getK_introduce() {
		return k_introduce;
	}

	public void setK_introduce(String k_introduce) {
		this.k_introduce = k_introduce;
	}

	public String getK_care_type() {
		return k_care_type;
	}

	public void setK_care_type(String k_care_type) {
		this.k_care_type = k_care_type;
	}

	public String getK_tendency() {
		return k_tendency;
	}

	public void setK_tendency(String k_tendency) {
		this.k_tendency = k_tendency;
	}

	public String getTeacher_type() {
		return teacher_type;
	}

	public void setTeacher_type(String teacher_type) {
		this.teacher_type = teacher_type;
	}

	public String getK_require() {
		return k_require;
	}

	public void setK_require(String k_require) {
		this.k_require = k_require;
	}

	public int getR_idx() {
		return r_idx;
	}

	public void setR_idx(int r_idx) {
		this.r_idx = r_idx;
	}

	public int getMember_p_idx() {
		return member_p_idx;
	}

	public void setMember_p_idx(int member_p_idx) {
		this.member_p_idx = member_p_idx;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public int getR_cost() {
		return r_cost;
	}

	public void setR_cost(int r_cost) {
		this.r_cost = r_cost;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getMatch_date() {
		return match_date;
	}

	public void setMatch_date(Date match_date) {
		this.match_date = match_date;
	}

	public int getCancle_reason() {
		return cancle_reason;
	}

	public void setCancle_reason(int cancle_reason) {
		this.cancle_reason = cancle_reason;
	}

	public String getCare_time() {
		return care_time;
	}

	public void setCare_time(String care_time) {
		this.care_time = care_time;
	}


}
