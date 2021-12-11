package dino.Dto;

import java.sql.Date;

public class MemberDto {

	private int idx;
	private String id;
	private String pwd;
	private String name;
	private int gender;
	private String birth;
	private String tel;
	private int memberType;
	private Date joinDate;
	private String addr1;
	private String addr2;
	private String addr3;
	
	public MemberDto() {
		super();
	}

	public MemberDto(int idx, String id, String pwd, String name, int gender, String birth, String tel, int memberType,
			Date joinDate, String addr1, String addr2, String addr3) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.tel = tel;
		this.memberType = memberType;
		this.joinDate = joinDate;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getMemberType() {
		return memberType;
	}

	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
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
	
	   @Override
	   public String toString() {
	     String str = "멤버타입" + memberType + "아이디 : " + id + "\n비밀번호 : " + pwd + "\n이름 : " + name + "\n성별 : " + gender + "생일" + birth + "\n전화번호 : " + tel + "\n주소 :" + addr1;
	     System.out.println(str);
	      return str;
	   }
}
