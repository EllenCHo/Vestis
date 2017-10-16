package com.vestis.vo;

public class CodiCoVo {
	private int no;
	private int personNo;
	private int codiNo;
	private String content;
	private String regDate;
	private String dbName;
	private String nicname;
	
	public CodiCoVo() {
		super();
	}

	public CodiCoVo(int no, int personNo, int codiNo, String content, String regDate) {
		super();
		this.no = no;
		this.personNo = personNo;
		this.codiNo = codiNo;
		this.content = content;
		this.regDate = regDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPersonNo() {
		return personNo;
	}

	public void setPersonNo(int personNo) {
		this.personNo = personNo;
	}

	public int getCodiNo() {
		return codiNo;
	}

	public void setCodiNo(int codiNo) {
		this.codiNo = codiNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getDbName() {
		return dbName;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}
	
	public String getNicname() {
		return nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	@Override
	public String toString() {
		return "CodiCoVo [no=" + no + ", personNo=" + personNo + ", codiNo=" + codiNo + ", content=" + content
				+ ", regDate=" + regDate + "]";
	}
	

}
