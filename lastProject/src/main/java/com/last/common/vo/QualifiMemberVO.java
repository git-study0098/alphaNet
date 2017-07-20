package com.last.common.vo;

public class QualifiMemberVO {

	private String mem_code;
	private String mem_nm;
	private String mem_enname;
	private String reg_num1;
	private String mem_phone;
	private String mem_post_numb1;
	private String mem_add1;
	private String mem_add2;
	private String mem_add3;
	private String mem_photo;
	
	
	
	
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
	}
	public String getMem_photo() {
		return mem_photo;
	}
	public void setMem_photo(String mem_photo) {
		this.mem_photo = mem_photo;
	}
	public String getMem_nm() {
		return mem_nm;
	}
	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}
	public String getMem_enname() {
		return mem_enname;
	}
	public void setMem_enname(String mem_enname) {
		this.mem_enname = mem_enname;
	}
	public String getReg_num1() {
		return reg_num1;
	}
	public void setReg_num1(String reg_num1) {
		this.reg_num1 = reg_num1;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_post_numb1() {
		return mem_post_numb1;
	}
	public void setMem_post_numb1(String mem_post_numb1) {
		this.mem_post_numb1 = mem_post_numb1;
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
	
	@Override
	public String toString() {
		return "QualifiMemberVO [mem_code=" + mem_code + ", mem_nm=" + mem_nm
				+ ", mem_enname=" + mem_enname + ", reg_num1=" + reg_num1
				+ ", mem_phone=" + mem_phone + ", mem_post_numb1="
				+ mem_post_numb1 + ", mem_add1=" + mem_add1 + ", mem_add2="
				+ mem_add2 + ", mem_add3=" + mem_add3 + ", mem_photo="
				+ mem_photo + "]";
	}
	
}
