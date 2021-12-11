package dino.findteachers.model;

import java.sql.Date;

public class MakeReserveCardVo {

	private int idx;
	private int member_p_idx;
	private int kid_idx;
	private Date start_date;
	private Date end_date;
	private int cost;
	private int status;
	private String addr1;
	private String addr2;
	private String addr3;

	public int getIdx() {
		return idx;
	}

	public int getMember_p_idx() {
		return member_p_idx;
	}

	public int getKid_idx() {
		return kid_idx;
	}

	public Date getStart_date() {
		return start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public int getCost() {
		return cost;
	}

	public int getStatus() {
		return status;
	}

	public String getAddr1() {
		return addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public String getAddr3() {
		return addr3;
	}

}
