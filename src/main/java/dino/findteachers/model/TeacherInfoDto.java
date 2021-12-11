package dino.findteachers.model;

// 뿌려줄 샘 정보 변수들 작성.

public class TeacherInfoDto {
	
	private int idx;
	private String name;
	private String birth;
	private String t_cost;
	private String badge;
	private String kid_type;
	private String career_experience;
	private String t_introduce;

	public TeacherInfoDto() {
		super();
	}

	public TeacherInfoDto(int idx, String name, String birth, String t_cost, String badge, String kid_type,
			String career_experience, String t_introduce) {
		super();
		this.idx = idx;
		this.name = name;
		this.birth = birth;
		this.t_cost = t_cost;
		this.badge = badge;
		this.kid_type = kid_type;
		this.career_experience = career_experience;
		this.t_introduce = t_introduce;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getT_cost() {
		return t_cost;
	}

	public void setT_cost(String t_cost) {
		this.t_cost = t_cost;
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

	public String getCareer_experience() {
		return career_experience;
	}

	public void setCareer_experience(String career_experience) {
		this.career_experience = career_experience;
	}

	public String getT_introduce() {
		return t_introduce;
	}

	public void setT_introduce(String t_introduce) {
		this.t_introduce = t_introduce;
	}

	
	
}
