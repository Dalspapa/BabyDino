
package dino.findkids.model;

import java.sql.*;

public class FindKidsJoinDto {
		
	private Integer cost;
	//idx of reserve Table 
	private Integer idx;
	private Integer kid_idx;
	private Integer member_p_idx;
	private Integer status;
	private Integer save_idx;
	private String addr1;
	private String addr2;
	private String addr3;
	private String k_name;
	private Integer k_gender;
	private Integer age;
	private Date k_birth;
	private String k_tendency;
	private String k_care_type;
	private String[] k_care_type_list;
	private String k_require;
	private String k_introduce;
	private String c_imgpath;
	private String teacher_type;
	private Integer star;
	private Date r_writedate;
	private String r_content;
	private String start_day;
	private String end_day;
	private String start_time;
	private String end_time;
	
	private String kidIdx;
	private String memberPIdx;
	private String kName;
	private String kGender;
	private String kTendency;
	private String kCareType;
	private String kRequire;
	private String kIntroduce;
	private String cImgpath;
	private String teacherType;
	private String startDay;
	private String endDay;
	private String startTime;
	private String endTime;
	private String kidAddr;
	private String teacher_addr;
	private String idx1;
	
	
	private String[] age_list;
	private String end_date;
	private String reserve_date;
	private String start_date;
	private String[] teacher_cost_list;
	
	
	
	
	public Integer getSave_idx() {
		return save_idx;
	}

	public void setSave_idx(Integer save_idx) {
		this.save_idx = save_idx;
	}

	public String[] getAge_list() {
		return age_list;
	}

	public void setAge_list(String[] age_list) {
		this.age_list = age_list;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getReserve_date() {
		return reserve_date;
	}

	public void setReserve_date(String reserve_date) {
		this.reserve_date = reserve_date;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String[] getTeacher_cost_list() {
		return teacher_cost_list;
	}

	public void setTeacher_cost_list(String[] teacher_cost_list) {
		this.teacher_cost_list = teacher_cost_list;
	}

	public String getKidIdx() {
		return kidIdx;
	}

	public void setKidIdx(String kidIdx) {
		this.kidIdx = kidIdx;
	}

	public String getMemberPIdx() {
		return memberPIdx;
	}

	public void setMemberPIdx(String memberPIdx) {
		this.memberPIdx = memberPIdx;
	}

	public String getkName() {
		return kName;
	}

	public void setkName(String kName) {
		this.kName = kName;
	}

	public String getkGender() {
		return kGender;
	}

	public void setkGender(String kGender) {
		this.kGender = kGender;
	}

	public String getkTendency() {
		return kTendency;
	}

	public void setkTendency(String kTendency) {
		this.kTendency = kTendency;
	}

	public String getkCareType() {
		return kCareType;
	}

	public void setkCareType(String kCareType) {
		this.kCareType = kCareType;
	}

	public String getkRequire() {
		return kRequire;
	}

	public void setkRequire(String kRequire) {
		this.kRequire = kRequire;
	}

	public String getkIntroduce() {
		return kIntroduce;
	}

	public void setkIntroduce(String kIntroduce) {
		this.kIntroduce = kIntroduce;
	}

	public String getcImgpath() {
		return cImgpath;
	}

	public void setcImgpath(String cImgpath) {
		this.cImgpath = cImgpath;
	}

	public String getTeacherType() {
		return teacherType;
	}

	public void setTeacherType(String teacherType) {
		this.teacherType = teacherType;
	}

	public String getStartDay() {
		return startDay;
	}

	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}

	public String getEndDay() {
		return endDay;
	}

	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getKidAddr() {
		return kidAddr;
	}

	public void setKidAddr(String kidAddr) {
		this.kidAddr = kidAddr;
	}

	public String getTeacher_addr() {
		return teacher_addr;
	}

	public void setTeacher_addr(String teacherAddr) {
		this.teacher_addr = teacherAddr;
	}

	public String getIdx1() {
		return idx1;
	}

	public void setIdx1(String idx1) {
		this.idx1 = idx1;
	}

	public FindKidsJoinDto() {
		super();
	}

	public FindKidsJoinDto(Integer cost, Integer idx, Integer kid_idx, Integer member_p_idx, Integer status, String addr1, String addr2,
			String addr3, String k_name, Integer k_gender, Integer age, Date k_birth, String k_tendency, String k_care_type,
			String k_require, String k_introduce, String c_imgpath, String teacher_type, Integer star, Date r_writedate,
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

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

	public Integer getIdx() {
		return idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	public Integer getKid_idx() {
		return kid_idx;
	}

	public void setKid_idx(Integer kid_idx) {
		this.kid_idx = kid_idx;
	}

	public Integer getMember_p_idx() {
		return member_p_idx;
	}

	public void setMember_p_idx(Integer member_p_idx) {
		this.member_p_idx = member_p_idx;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
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

	public Integer getK_gender() {
		return k_gender;
	}

	public void setK_gender(Integer k_gender) {
		this.k_gender = k_gender;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
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
	
	

	public String[] getK_care_type_list() {
		return k_care_type_list;
	}

	public void setK_care_type_list(String[] k_care_type_list) {
		this.k_care_type_list = k_care_type_list;
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

	public Integer getStar() {
		return star;
	}

	public void setStar(Integer star) {
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
