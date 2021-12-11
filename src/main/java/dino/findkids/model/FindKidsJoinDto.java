package dino.findkids.model;

import java.sql.*;

public class FindKidsJoinDto {
		
	private int cost;
	//idx of reserve Table 
	private int idx;
	private int kid_idx;
	private int member_p_idx;
	private int status;
	private String addr1;
	private String addr2;
	private String addr3;
	private String k_name;
	private int k_gender;
	private int age;
	private Date k_birth;
	private String k_tendency;
	private String k_care_type;
	private String k_require;
	private String k_introduce;
	private String c_imgpath;
	private String teacher_type;
	private int star;
	private Date r_writedate;
	private String r_content;
	private String start_day;
	private String end_day;
	private String start_time;
	private String end_time;	
	
	public FindKidsJoinDto() {
		super();
	}

	public FindKidsJoinDto(int cost, int idx, int kid_idx, int member_p_idx, int status, String addr1, String addr2,
			String addr3, String k_name, int k_gender, int age, Date k_birth, String k_tendency, String k_care_type,
			String k_require, String k_introduce, String c_imgpath, String teacher_type, int star, Date r_writedate,
			String r_content, String start_day, String end_day, String start_time, String end_time) {
		super();
		this.cost = cost;
		this.idx = idx;
		this.kid_idx = kid_idx;
		this.member_p_idx = member_p_idx;
		this.status = status;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.k_name = k_name;
		this.k_gender = k_gender;
		this.age = age;
		this.k_birth = k_birth;
		this.k_tendency = k_tendency;
		this.k_care_type = k_care_type;
		this.k_require = k_require;
		this.k_introduce = k_introduce;
		this.c_imgpath = c_imgpath;
		this.teacher_type = teacher_type;
		this.star = star;
		this.r_writedate = r_writedate;
		this.r_content = r_content;
		this.start_day = start_day;
		this.end_day = end_day;
		this.start_time = start_time;
		this.end_time = end_time;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getKid_idx() {
		return kid_idx;
	}

	public void setKid_idx(int kid_idx) {
		this.kid_idx = kid_idx;
	}

	public int getMember_p_idx() {
		return member_p_idx;
	}

	public void setMember_p_idx(int member_p_idx) {
		this.member_p_idx = member_p_idx;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getK_birth() {
		return k_birth;
	}

	public void setK_birth(Date k_birth) {
		this.k_birth = k_birth;
	}

	public String getK_tendency() {
		return k_tendency;
	}

	public void setK_tendency(String k_tendency) {
		this.k_tendency = k_tendency;
	}

	public String getK_care_type() {
		return k_care_type;
	}

	public void setK_care_type(String k_care_type) {
		this.k_care_type = k_care_type;
	}

	public String getK_require() {
		return k_require;
	}

	public void setK_require(String k_require) {
		this.k_require = k_require;
	}

	public String getK_introduce() {
		return k_introduce;
	}

	public void setK_introduce(String k_introduce) {
		this.k_introduce = k_introduce;
	}

	public String getC_imgpath() {
		return c_imgpath;
	}

	public void setC_imgpath(String c_imgpath) {
		this.c_imgpath = c_imgpath;
	}

	public String getTeacher_type() {
		return teacher_type;
	}

	public void setTeacher_type(String teacher_type) {
		this.teacher_type = teacher_type;
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

	public String getStart_day() {
		return start_day;
	}

	public void setStart_day(String start_day) {
		this.start_day = start_day;
	}

	public String getEnd_day() {
		return end_day;
	}

	public void setEnd_day(String end_day) {
		this.end_day = end_day;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	

}
