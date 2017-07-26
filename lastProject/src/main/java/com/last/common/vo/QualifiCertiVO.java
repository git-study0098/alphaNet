package com.last.common.vo;

import java.sql.Date;

public class QualifiCertiVO {
	
	private String exkind_nm;	//자격명
	private Date actual_pass_date;	//최종합격일,실기 합격일
	private int qualifi_certi_iss_pr;	//발급 수수료
	private String qualifi_certi_code;	// 자격증 번호
	private Date written_pass_date;	//필기 합격일
	private int recieve_way2;	//배송방법
	private String qualifi_certi_count;	//비고
	private String numg_code;	//회차코드
	private String exkind_code;	//종목코드
	private String[] certi_code; // 자격증 종류 배열
	private String mem_nm;
	private String reg_num1;
	private String qualifi_certi_date;
	
	
	public String getQualifi_certi_date() {
		return qualifi_certi_date;
	}
	public void setQualifi_certi_date(String qualifi_certi_date) {
		this.qualifi_certi_date = qualifi_certi_date;
	}
	public String getMem_nm() {
		return mem_nm;
	}
	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}
	public String getReg_num1() {
		return reg_num1;
	}
	public void setReg_num1(String reg_num1) {
		this.reg_num1 = reg_num1;
	}
	public String[] getCerti_code() {
		return certi_code;
	}
	public void setCerti_code(String[] certi_code) {
		this.certi_code = certi_code;
	}
	public String getNumg_code() {
		return numg_code;
	}
	public void setNumg_code(String numg_code) {
		this.numg_code = numg_code;
	}
	public String getExkind_code() {
		return exkind_code;
	}
	public void setExkind_code(String exkind_code) {
		this.exkind_code = exkind_code;
	}
	public String getExkind_nm() {
		return exkind_nm;
	}
	public void setExkind_nm(String exkind_nm) {
		this.exkind_nm = exkind_nm;
	}
	public Date getActual_pass_date() {
		return actual_pass_date;
	}
	public void setActual_pass_date(Date actual_pass_date) {
		this.actual_pass_date = actual_pass_date;
	}
	public int getQualifi_certi_iss_pr() {
		return qualifi_certi_iss_pr;
	}
	public void setQualifi_certi_iss_pr(int qualifi_certi_iss_pr) {
		this.qualifi_certi_iss_pr = qualifi_certi_iss_pr;
	}
	public String getQualifi_certi_code() {
		return qualifi_certi_code;
	}
	public void setQualifi_certi_code(String qualifi_certi_code) {
		this.qualifi_certi_code = qualifi_certi_code;
	}
	public Date getWritten_pass_date() {
		return written_pass_date;
	}
	public void setWritten_pass_date(Date written_pass_date) {
		this.written_pass_date = written_pass_date;
	}
	public int getRecieve_way2() {
		return recieve_way2;
	}
	public void setRecieve_way2(int recieve_way2) {
		this.recieve_way2 = recieve_way2;
	}
	public String getQualifi_certi_count() {
		return qualifi_certi_count;
	}
	public void setQualifi_certi_count(String qualifi_certi_count) {
		this.qualifi_certi_count = qualifi_certi_count;
	}
	@Override
	public String toString() {
		return "QualifiVO [exkind_nm=" + exkind_nm + ", actual_pass_date="
				+ actual_pass_date + ", qualifi_certi_iss_pr="
				+ qualifi_certi_iss_pr + ", qualifi_certi_code="
				+ qualifi_certi_code + ", written_pass_date="
				+ written_pass_date + ", recieve_way2=" + recieve_way2
				+ ", qualifi_certi_count=" + qualifi_certi_count
				+ ", numg_code=" + numg_code + ", exkind_code=" + exkind_code
				+ "]";
	}
	
	
}
