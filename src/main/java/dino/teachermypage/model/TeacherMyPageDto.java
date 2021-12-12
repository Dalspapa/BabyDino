package dino.teachermypage.model;

import java.sql.Date;

public class TeacherMyPageDto {
	
	private int t_idx;
	private int d_time_idx;
	private int badge;
	private String kid_type;
	private String t_care_type;
	private String schedule_day;
	private String schedule_time;
	private int t_cost;
	private String t_introduce;
	private int bank;
	private String acnum;
	private int cctvagree;	
	private String t_sexcrime;
	private String career_experience;
	private String name;
	private int age;
	private int gender;
	private int d_reserve_idx;
	private int cost;				//reserve.cost
	private String c_imgpath;
	private int star;
	private Date r_writedate;
	private String r_content;
	
	public TeacherMyPageDto() {
		super();
	}

	public TeacherMyPageDto(int t_idx, int d_time_idx, int badge, String kid_type, String t_care_type,
			String schedule_day, String schedule_time, int t_cost, String t_introduce, int bank, String acnum,
			int cctvagree, String t_sexcrime, String career_experience, String name, int age, int gender,
			int d_reserve_idx, int cost, String c_imgpath, int star, Date r_writedate, String r_content) {
		super();
		this.t_idx = t_idx;
		this.d_time_idx = d_time_idx;
		this.badge = badge;
		this.kid_type = kid_type;
		this.t_care_type = t_care_type;
		this.schedule_day = schedule_day;
		this.schedule_time = schedule_time;
		this.t_cost = t_cost;
		this.t_introduce = t_introduce;
		this.bank = bank;
		this.acnum = acnum;
		this.cctvagree = cctvagree;
		this.t_sexcrime = t_sexcrime;
		this.career_experience = career_experience;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.d_reserve_idx = d_reserve_idx;
		this.cost = cost;
		this.c_imgpath = c_imgpath;
		this.star = star;
		this.r_writedate = r_writedate;
		this.r_content = r_content;
	}

	public int getT_idx() {
		return t_idx;
	}

	public void setT_idx(int t_idx) {
		this.t_idx = t_idx;
	}

	public int getD_time_idx() {
		return d_time_idx;
	}

	public void setD_time_idx(int d_time_idx) {
		this.d_time_idx = d_time_idx;
	}

	public int getBadge() {
		return badge;
	}

	public void setBadge(int badge) {
		this.badge = badge;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getD_reserve_idx() {
		return d_reserve_idx;
	}

	public void setD_reserve_idx(int d_reserve_idx) {
		this.d_reserve_idx = d_reserve_idx;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getC_imgpath() {
		return c_imgpath;
	}

	public void setC_imgpath(String c_imgpath) {
		this.c_imgpath = c_imgpath;
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
