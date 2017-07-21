package com.last.common.vo;

public class StareVO {
	
	private String stare_code;		//응시코드(수험번호)
	private String mem_code;		//회원아이디
	private String stare_date;		//응시일
	private String em_info_code;	//시험정보코드
	private String em_nm;			//시험명
	private String exkind_nm;		//종목명
	private String exkind_code;		//종목코드
	private String stare_em_pass_at;// 필기합격여부
	private String mem_nm;
	
	
	
	public String getMem_nm() {
		return mem_nm;
	}
	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}
	public String getStare_em_pass_at() {
		return stare_em_pass_at;
	}
	public void setStare_em_pass_at(String stare_em_pass_at) {
		this.stare_em_pass_at = stare_em_pass_at;
	}
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
	}
	public String getEm_nm() {
		return em_nm;
	}
	public void setEm_nm(String em_nm) {
		this.em_nm = em_nm;
	}
	public String getStare_code() {
		return stare_code;
	}
	public void setStare_code(String stare_code) {
		this.stare_code = stare_code;
	}
	public String getStare_date() {
		return stare_date;
	}
	public void setStare_date(String stare_date) {
		this.stare_date = stare_date;
	}
	public String getEm_info_code() {
		return em_info_code;
	}
	public void setEm_info_code(String em_info_code) {
		this.em_info_code = em_info_code;
	}
	public String getExkind_nm() {
		return exkind_nm;
	}
	public void setExkind_nm(String exkind_nm) {
		this.exkind_nm = exkind_nm;
	}
	public String getExkind_code() {
		return exkind_code;
	}
	public void setExkind_code(String exkind_code) {
		this.exkind_code = exkind_code;
	}
	
	@Override
	public String toString() {
		return "StareVO [stare_code=" + stare_code + ", mem_code=" + mem_code
				+ ", stare_date=" + stare_date + ", em_info_code="
				+ em_info_code + ", em_nm=" + em_nm + ", exkind_nm="
				+ exkind_nm + ", exkind_code=" + exkind_code
				+ ", stare_em_pass_at=" + stare_em_pass_at + ", mem_nm="
				+ mem_nm + "]";
	}
	
}
