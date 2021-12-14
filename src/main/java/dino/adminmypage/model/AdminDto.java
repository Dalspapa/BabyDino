package dino.adminmypage.model;

import java.sql.*;

public class AdminDto {
	
	private int idx;
	private String name;
	private String id;
	private String tel;
	private Date joinDate;
	private String exemplification;
	private String crimeagree;
	
	public AdminDto() {
		super();
	}

	public AdminDto(int idx, String name, String id, String tel, Date joinDate, String exemplification,
			String crimeagree) {
		super();
		this.idx = idx;
		this.name = name;
		this.id = id;
		this.tel = tel;
		this.joinDate = joinDate;
		this.exemplification = exemplification;
		this.crimeagree = crimeagree;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getExemplification() {
		return exemplification;
	}

	public void setExemplification(String exemplification) {
		this.exemplification = exemplification;
	}

	public String getCrimeagree() {
		return crimeagree;
	}

	public void setCrimeagree(String crimeagree) {
		this.crimeagree = crimeagree;
	}
	
	
	

}
