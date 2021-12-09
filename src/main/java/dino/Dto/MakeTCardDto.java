package dino.Dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MakeTCardDto {

	//Teacher Card Table
	private int idx;
	private int d_member_idx;
	private int job;
	private String badge;
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
	
	
	
	
	
	private List<MultipartFile> tImg;
	
	
	//Kids Card Table
	
	//Reserve Table
	
	//기본생성자
	public MakeTCardDto() {
		super();
	}
	
	//인자생성자
	public MakeTCardDto(int idx, int d_member_idx, int job, String badge, String kid_type, String t_care_type,
			String schedule_day, String schedule_time, int t_cost, String t_introduce, int bank, String acnum,
			int cctvagree, String t_sexcrime, String career_experience, List<MultipartFile> tImg) {
		super();
		this.idx = idx;
		this.d_member_idx = d_member_idx;
		this.job = job;
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
		this.tImg = tImg;
	}
	
	
	//게터세터
	
	public List<MultipartFile> getTImg() {
		return tImg;
	}

	public void setTImg(List<MultipartFile> tImg) {
		this.tImg = tImg;
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

	public int getJob() {
		return job;
	}

	public void setJob(int job) {
		this.job = job;
	}

	public String getBadge() {
		return badge;
	}

	public void setBadge(String badge) {
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
	
	//toString
	@Override
	public String toString() {
		
		String str = "idx : " + idx + "\nm_idx : " + d_member_idx + "\njob : " + job + "\nbadge : " + badge + "\nkid_type : " + kid_type +
				"\ncare_type : " + t_care_type + "\ns_day : " + schedule_day + "\ns_time : " + schedule_time + "\ncost : " + t_cost + 
				"\nintro : " + t_introduce + "\nbank : " + bank + "\nacnum : " + acnum + "\ncctv : " + cctvagree + "\nsex : " + t_sexcrime +
				"\ncareer : " + career_experience;
		System.out.println(str);
		return str;
	}
	
}
