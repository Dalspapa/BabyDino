package dino.findteachers.model;

import java.util.List;

import dino.dto.ReviewDto;

public class FindTeacherJoinDto {

	private int idx;
	private int t_cost;
	private int job;
	private int badge;
	private int teacher_idx;
	private String t_introduce;
	private String schedule_day; // 샘은 시간안씀
	private String schedule_time; // 샘은 시간안씀
	private String kid_type;
	private String t_care_type;
	private String career_experience;
	private int cctvagree;
	private String name;
	private String birth;
	private int age;
	private int gender;
	private String addr1;
	private String addr2;
	private String addr3;
	private String r_content;
	private String c_imgpath;
	private List<ReviewDto> review_list;

	public FindTeacherJoinDto() {
		super();
	}

	public FindTeacherJoinDto(int idx, int t_cost, int job, int badge, int teacher_idx, String t_introduce,
			String schedule_day, String schedule_time, String kid_type, String t_care_type, String career_experience,
			int cctvagree, String name, String birth, int age, int gender, String addr1, String addr2, String addr3,
			String r_content, String c_imgpath, List<ReviewDto> review_list) {
		super();
		this.idx = idx;
		this.t_cost = t_cost;
		this.job = job;
		this.badge = badge;
		this.teacher_idx = teacher_idx;
		this.t_introduce = t_introduce;
		this.schedule_day = schedule_day;
		this.schedule_time = schedule_time;
		this.kid_type = kid_type;
		this.t_care_type = t_care_type;
		this.career_experience = career_experience;
		this.cctvagree = cctvagree;
		this.name = name;
		this.birth = birth;
		this.age = age;
		this.gender = gender;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.r_content = r_content;
		this.c_imgpath = c_imgpath;
		this.review_list = review_list;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getT_cost() {
		return t_cost;
	}

	public void setT_cost(int t_cost) {
		this.t_cost = t_cost;
	}

	public int getJob() {
		return job;
	}

	public void setJob(int job) {
		this.job = job;
	}

	public int getBadge() {
		return badge;
	}

	public void setBadge(int badge) {
		this.badge = badge;
	}

	public int getTeacher_idx() {
		return teacher_idx;
	}

	public void setTeacher_idx(int teacher_idx) {
		this.teacher_idx = teacher_idx;
	}

	public String getT_introduce() {
		return t_introduce;
	}

	public void setT_introduce(String t_introduce) {
		this.t_introduce = t_introduce;
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

	public String getCareer_experience() {
		return career_experience;
	}

	public void setCareer_experience(String career_experience) {
		this.career_experience = career_experience;
	}

	public int getCctvagree() {
		return cctvagree;
	}

	public void setCctvagree(int cctvagree) {
		this.cctvagree = cctvagree;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
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

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getC_imgpath() {
		return c_imgpath;
	}

	public void setC_imgpath(String c_imgpath) {
		this.c_imgpath = c_imgpath;
	}

	public List<ReviewDto> getReview_list() {
		return review_list;
	}

	public void setReview_list(List<ReviewDto> review_list) {
		this.review_list = review_list;
	}

}
