package dino.findkids.model;

import java.sql.*;

public class FindKidsJoinDto {
		
	private int hope_cost;
	private int idx;
	private String r_time;
	private Date r_endday;
	private int r_cost;
	private int d_member_p_idx;
	private String addr1;
	private String addr2;
	private String addr3;	
	private String k_name;	
	private int k_gender;
	private Date k_birth;
	private String k_tendency;
	private String k_care_type;
	private String k_require;
	private String k_introduce;
	private String c_imgpath;
	private String teacher_type;
	private int d_kid_idx;	
	private int star;
	private Date r_writedate;
	private String r_content;
	
	
	
	public FindKidsJoinDto() {
		super();
	}

	public FindKidsJoinDto(int hope_cost, int idx, String r_time, Date r_endday, int r_cost, int d_member_p_idx,
			String addr1, String addr2, String addr3, String k_name, int k_gender, Date k_birth, String k_tendency,
			String k_care_type, String k_require, String k_introduce, String c_imgpath, String teacher_type,
			int d_kid_idx, int star, Date r_writedate, String r_content) {
		super();
		this.hope_cost = hope_cost;
		this.idx = idx;
		this.r_time = r_time;
		this.r_endday = r_endday;
		this.r_cost = r_cost;
		this.d_member_p_idx = d_member_p_idx;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.k_name = k_name;
		this.k_gender = k_gender;
		this.k_birth = k_birth;
		this.k_tendency = k_tendency;
		this.k_care_type = k_care_type;
		this.k_require = k_require;
		this.k_introduce = k_introduce;
		this.c_imgpath = c_imgpath;
		this.teacher_type = teacher_type;
		this.d_kid_idx = d_kid_idx;
		this.star = star;
		this.r_writedate = r_writedate;
		this.r_content = r_content;
	}

	public int getHope_cost() {
		return hope_cost;
	}

	public void setHope_cost(int hope_cost) {
		this.hope_cost = hope_cost;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getR_time() {
		return r_time;
	}

	public void setR_time(String r_time) {
		this.r_time = r_time;
	}

	public Date getR_endday() {
		return r_endday;
	}

	public void setR_endday(Date r_endday) {
		this.r_endday = r_endday;
	}

	public int getR_cost() {
		return r_cost;
	}

	public void setR_cost(int r_cost) {
		this.r_cost = r_cost;
	}

	public int getD_member_p_idx() {
		return d_member_p_idx;
	}

	public void setD_member_p_idx(int d_member_p_idx) {
		this.d_member_p_idx = d_member_p_idx;
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

	public int getD_kid_idx() {
		return d_kid_idx;
	}

	public void setD_kid_idx(int d_kid_idx) {
		this.d_kid_idx = d_kid_idx;
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
