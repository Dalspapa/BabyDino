package dino.findkids.model;

public class KidInfoDto {
	
	private String k_name;
	private int k_gender;
	private String k_introduce;
	private String teacher_type;
	private String addr1;
	private String k_care_type;
	private String k_require;
	
	public KidInfoDto() {
		super();
	}

	public KidInfoDto(String k_name, int k_gender, String k_introduce, String teacher_type, String addr1,
			String k_care_type, String k_require) {
		super();
		this.k_name = k_name;
		this.k_gender = k_gender;
		this.k_introduce = k_introduce;
		this.teacher_type = teacher_type;
		this.addr1 = addr1;
		this.k_care_type = k_care_type;
		this.k_require = k_require;
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

	public String getK_introduce() {
		return k_introduce;
	}

	public void setK_introduce(String k_introduce) {
		this.k_introduce = k_introduce;
	}

	public String getTeacher_type() {
		return teacher_type;
	}

	public void setTeacher_type(String teacher_type) {
		this.teacher_type = teacher_type;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
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
	
	
}
