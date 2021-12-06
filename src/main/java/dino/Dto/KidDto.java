package dino.Dto;

import java.sql.*;

public class KidDto {
	
		//Kid Card Table
		private int idx;
		private int d_member_idx;
		private String k_name;
		private int k_gender;
		private String k_tendency;
		private Date k_birth;
		private String k_introduce;
		private String k_care_type;
		private String teacher_type;
		private String k_require;
	
		
		public KidDto() {
			super();
		}
	
		public KidDto(int idx, int d_member_idx, String k_name, int k_gender, String k_tendency, Date k_birth,
			String k_introduce, String k_care_type, String teacher_type, String k_require) {
		super();
		this.idx = idx;
		this.d_member_idx = d_member_idx;
		this.k_name = k_name;
		this.k_gender = k_gender;
		this.k_tendency = k_tendency;
		this.k_birth = k_birth;
		this.k_introduce = k_introduce;
		this.k_care_type = k_care_type;
		this.teacher_type = teacher_type;
		this.k_require = k_require;
		}

		public int getIdx() {
			return idx;
		}

		public void setIdx(int idx) {
			this.idx = idx;
		}

		public int getD_member_idx() {
			return d_member_idx;
		}

		public void setD_member_idx(int d_member_idx) {
			this.d_member_idx = d_member_idx;
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

		@Override
		public String toString() {
			String str = "아이 이름" + k_name + "아이 성별" + k_gender + "아이성향" + k_tendency;
			System.out.println(str);
			return str; 
		}
	
	
}
