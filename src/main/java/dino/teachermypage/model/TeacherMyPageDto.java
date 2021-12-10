package dino.teachermypage.model;

import java.sql.Date;

public class TeacherMyPageDto {
	
	private String c_imgpath;
	private String name;
	private Date birth;
	private int gender;
	private int bank;
	private String acnum;
	private int t_cost;
	private int r_cost;
	private String schedule_day;
	private String schedule_time;
	private String t_introduce;
	private String career_experience;
	private String t_care_type;
	private String kid_type;
	private int d_reserve_idx;
	private int d_member_idx;
	private int star;
	private Date r_writedate;
	private String r_content;
	
	public TeacherMyPageDto() {
		super();
	}

	public TeacherMyPageDto(String c_imgpath, String name, Date birth, int gender, int bank, String acnum, int t_cost,
			int r_cost, String schedule_day, String schedule_time, String t_introduce, String career_experience,
			String t_care_type, String kid_type, int d_reserve_idx, int d_member_idx, int star, Date r_writedate,
			String r_content) {
		super();
		this.c_imgpath = c_imgpath;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.bank = bank;
		this.acnum = acnum;
		this.t_cost = t_cost;
		this.r_cost = r_cost;
		this.schedule_day = schedule_day;
		this.schedule_time = schedule_time;
		this.t_introduce = t_introduce;
		this.career_experience = career_experience;
		this.t_care_type = t_care_type;
		this.kid_type = kid_type;
		this.d_reserve_idx = d_reserve_idx;
		this.d_member_idx = d_member_idx;
		this.star = star;
		this.r_writedate = r_writedate;
		this.r_content = r_content;
	}

	public String getC_imgpath() {
		return c_imgpath;
	}

	public void setC_imgpath(String c_imgpath) {
		this.c_imgpath = c_imgpath;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getBank() {
		return bank;
	}

	public void setBank(int bank) {
		this.bank = bank;
	}

	public String getAcnum() {
		return acnum;
	}

	public void setAcnum(String acnum) {
		this.acnum = acnum;
	}

	public int getT_cost() {
		return t_cost;
	}

	public void setT_cost(int t_cost) {
		this.t_cost = t_cost;
	}

	public int getR_cost() {
		return r_cost;
	}

	public void setR_cost(int r_cost) {
		this.r_cost = r_cost;
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

	public String getT_introduce() {
		return t_introduce;
	}

	public void setT_introduce(String t_introduce) {
		this.t_introduce = t_introduce;
	}

	public String getCareer_experience() {
		return career_experience;
	}

	public void setCareer_experience(String career_experience) {
		this.career_experience = career_experience;
	}

	public String getT_care_type() {
		return t_care_type;
	}

	public void setT_care_type(String t_care_type) {
		this.t_care_type = t_care_type;
	}

	public String getKid_type() {
		return kid_type;
	}

	public void setKid_type(String kid_type) {
		this.kid_type = kid_type;
	}

	public int getD_reserve_idx() {
		return d_reserve_idx;
	}

	public void setD_reserve_idx(int d_reserve_idx) {
		this.d_reserve_idx = d_reserve_idx;
	}

	public int getD_member_idx() {
		return d_member_idx;
	}

	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public Date getR_writedate() {
		return r_writedate;
	}

	public void setR_writedate(Date r_writedate) {
		this.r_writedate = r_writedate;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}	

	
}
