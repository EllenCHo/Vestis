package com.vestis.vo;

public class CodibookVo {
	private int no;			//Codi db 번호
	private int otherNo;	//코디해준사람 번호
	private int ownerNo;	//코디 받은 사람
	private String ownername; //코디 받은 사람 닉네임
	private String otherNicname;	//코디해준 사람 닉네임
	private String ownerprofile;	//옷주인 프로필사진
	private String profile;		//프로필사진 
	private String codi;		//코디사진
	private String wear;		//입은 사진
	private int choose;			//채택
	private int likes;			//좋아요 수
	private int likeflag;		//좋아요 플래그
	
	public CodibookVo() {}

	public CodibookVo(int no, int otherNo, String otherNicname, String profile, String codi, String wear, int choose,
			int likes, int likeflag) {
		super();
		this.no = no;
		this.otherNo = otherNo;
		this.otherNicname = otherNicname;
		this.profile = profile;
		this.codi = codi;
		this.wear = wear;
		this.choose = choose;
		this.likes = likes;
		this.likeflag = likeflag;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getOtherNo() {
		return otherNo;
	}

	public void setOtherNo(int otherNo) {
		this.otherNo = otherNo;
	}

	public String getOtherNicname() {
		return otherNicname;
	}

	public void setOtherNicname(String otherNicname) {
		this.otherNicname = otherNicname;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getCodi() {
		return codi;
	}

	public void setCodi(String codi) {
		this.codi = codi;
	}

	public String getWear() {
		return wear;
	}

	public void setWear(String wear) {
		this.wear = wear;
	}

	public int getChoose() {
		return choose;
	}

	public void setChoose(int choose) {
		this.choose = choose;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getLikeflag() {
		return likeflag;
	}

	public void setLikeflag(int likeflag) {
		this.likeflag = likeflag;
	}

	public int getOwnerNo() {
		return ownerNo;
	}

	public void setOwnerNo(int ownerNo) {
		this.ownerNo = ownerNo;
	}

	public String getOwnername() {
		return ownername;
	}

	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}

	public String getOwnerprofile() {
		return ownerprofile;
	}

	public void setOwnerprofile(String ownerprofile) {
		this.ownerprofile = ownerprofile;
	}
}
