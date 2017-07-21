package com.last.common.vo;

import org.springframework.web.multipart.MultipartFile;

public class MemberVo {

	private String id; 
	private String pwd;
	private String name;
	private String mem_enName;
	private String mem_ph;
	
	//회원가입 사용//
	private String mem_phone;
	private String mem_email;
	private String mem_add1;
	private String mem_add2;
	private String mem_add3;
	private String mem_add4;
	private String mem_kor_for;
	private String mem_post_numb1;
	private String mem_post_numb2;
	private String mem_gender;
	private String mem_bir;
	private String enabled;
	private String authority;
	private String mem_jang;
	private String mem_pass_em;
	
	//파일 업로드
	private String mem_photo; //파일 이름
	private MultipartFile uploadfile; //업로드될 파일
	
	//학교
	private String sch_code; //학교코드
	private String sch_coll; //학교2년제4년제
	
	private String sch_major_code;//학과코드
	private String sch_major_nm; //학과이름
	
	
	
	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	public String getSch_code() {
		return sch_code;
	}
	public void setSch_code(String sch_code) {
		this.sch_code = sch_code;
	}
	public String getSch_coll() {
		return sch_coll;
	}
	public void setSch_coll(String sch_coll) {
		this.sch_coll = sch_coll;
	}
	public String getSch_major_code() {
		return sch_major_code;
	}
	public void setSch_major_code(String sch_major_code) {
		this.sch_major_code = sch_major_code;
	}
	public String getSch_major_nm() {
		return sch_major_nm;
	}
	public void setSch_major_nm(String sch_major_nm) {
		this.sch_major_nm = sch_major_nm;
	}
	public String getMem_pass_em() {
		return mem_pass_em;
	}
	public void setMem_pass_em(String mem_pass_em) {
		this.mem_pass_em = mem_pass_em;
	}
	public String getMem_jang() {
		return mem_jang;
	}
	public void setMem_jang(String mem_jang) {
		this.mem_jang = mem_jang;
	}
	public String getMem_add1() {
		return mem_add1;
	}
	public void setMem_add1(String mem_add1) {
		this.mem_add1 = mem_add1;
	}
	public String getMem_add2() {
		return mem_add2;
	}
	public void setMem_add2(String mem_add2) {
		this.mem_add2 = mem_add2;
	}
	public String getMem_add3() {
		return mem_add3;
	}
	public void setMem_add3(String mem_add3) {
		this.mem_add3 = mem_add3;
	}
	public String getMem_add4() {
		return mem_add4;
	}
	public void setMem_add4(String mem_add4) {
		this.mem_add4 = mem_add4;
	}
	public String getMem_post_numb1() {
		return mem_post_numb1;
	}
	public void setMem_post_numb1(String mem_post_numb1) {
		this.mem_post_numb1 = mem_post_numb1;
	}
	public String getMem_post_numb2() {
		return mem_post_numb2;
	}
	public void setMem_post_numb2(String mem_post_numb2) {
		this.mem_post_numb2 = mem_post_numb2;
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
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_kor_for() {
		return mem_kor_for;
	}
	public void setMem_kor_for(String mem_kor_for) {
		this.mem_kor_for = mem_kor_for;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_photo() {
		return mem_photo;
	}
	public void setMem_photo(String mem_photo) {
		this.mem_photo = mem_photo;
	}
	
	public String getMem_bir() {
		return mem_bir;
	}
	public void setMem_bir(String mem_bir) {
		this.mem_bir = mem_bir;
	}
	public String getMem_enName() {
		return mem_enName;
	}
	public void setMem_enName(String mem_enName) {
		this.mem_enName = mem_enName;
	}
	@Override
	public String toString() {
		return "MemberVo [id=" + id + ", pwd=" + pwd + ", name=" + name
				+ ", mem_enName=" + mem_enName + ", mem_phone=" + mem_phone
				+ ", mem_email=" + mem_email + ", mem_add1=" + mem_add1
				+ ", mem_add2=" + mem_add2 + ", mem_add3=" + mem_add3
				+ ", mem_add4=" + mem_add4 + ", mem_kor_for=" + mem_kor_for
				+ ", mem_post_numb1=" + mem_post_numb1 + ", mem_post_numb2="
				+ mem_post_numb2 + ", mem_gender=" + mem_gender
				+ ", mem_photo=" + mem_photo + ", mem_bir=" + mem_bir
				+ ", enabled=" + enabled + ", authority=" + authority
				+ ", mem_jang=" + mem_jang + ", mem_pass_em=" + mem_pass_em
				+ ", sch_code=" + sch_code + ", sch_coll=" + sch_coll
				+ ", sch_major_code=" + sch_major_code + ", sch_major_nm="
				+ sch_major_nm + "]";
	}

}
