package dino.dto;

import java.sql.*;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class KidDto {

	//Kid Card Table
	private Integer idx;
	private Integer kids_idx;
	private Integer d_kidcard_idx;
	private Integer d_member_idx;
	private String k_name;
	private String care_type;
	private Integer k_gender;
	private String k_tendency;
	private Date k_birth;
	private String k_introduce;
	private String k_care_type;
	private String teacher_type;
	private String k_require;
	private Integer age;
	private List<MultipartFile> k_img;

	private String regId;
	private String updId;


	public List<MultipartFile> getK_img() {
		return k_img;
	}
	public void setK_img(List<MultipartFile> k_img) {
		this.k_img = k_img;
	}
	public Integer getIdx() {
		return idx;
	}
	public void setIdx(Integer idx) {
		this.idx = idx;
	}
	public Integer getKids_idx() {
		return kids_idx;
	}
	public void setKids_idx(Integer kids_idx) {
		this.kids_idx = kids_idx;
	}
	public Integer getD_kidcard_idx() {
		return d_kidcard_idx;
	}
	public void setD_kidcard_idx(Integer d_kidcard_idx) {
		this.d_kidcard_idx = d_kidcard_idx;
	}
	public Integer getD_member_idx() {
		return d_member_idx;
	}
	public void setD_member_idx(Integer d_member_idx) {
		this.d_member_idx = d_member_idx;
	}
	public String getK_name() {
		return k_name;
	}
	public void setK_name(String k_name) {
		this.k_name = k_name;
	}
	public String getCare_type() {
		return care_type;
	}
	public void setCare_type(String care_type) {
		this.care_type = care_type;
	}
	public Integer getK_gender() {
		return k_gender;
	}
	public void setK_gender(Integer k_gender) {
		this.k_gender = k_gender;
	}
	public String getK_tendency() {
		return k_tendency;
	}
	public void setK_tendency(String k_tendency) {
		this.k_tendency = k_tendency;
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
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getUpdId() {
		return updId;
	}
	public void setUpdId(String updId) {
		this.updId = updId;
	}





}
