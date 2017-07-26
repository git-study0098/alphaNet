package com.last.common.vo;

public class StareCertifiVO {
	
	private String sch_major_code; 
	private String sch_coll; 		
	private String sch_code_nm;		
	private String sch_major_nm;	
	private String sch_final;		
	private String exkind_nm;
	private String career_ind_code;	
	private String ca_comp_nm;		
	private String ca_work_content;	
	private String ca_work_bd;	
	private String ca_work_ed;	
	private String career_during;
	private String	mem_code;
	private String	ind_code;
	private String	compNm;
	private String	workCts;
	private String	workStartDt;
	private String	workEndDt;

	
	
	public String getCareer_during() {
		return career_during;
	}
	public void setCareer_during(String career_during) {
		this.career_during = career_during;
	}
	public String getExkind_nm() {
		return exkind_nm;
	}
	public void setExkind_nm(String exkind_nm) {
		this.exkind_nm = exkind_nm;
	}
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
	}
	public String getInd_code() {
		return ind_code;
	}
	public void setInd_code(String ind_code) {
		this.ind_code = ind_code;
	}
	public String getCompNm() {
		return compNm;
	}
	public void setCompNm(String compNm) {
		this.compNm = compNm;
	}
	public String getWorkCts() {
		return workCts;
	}
	public void setWorkCts(String workCts) {
		this.workCts = workCts;
	}
	public String getWorkStartDt() {
		return workStartDt;
	}
	public void setWorkStartDt(String workStartDt) {
		this.workStartDt = workStartDt;
	}
	public String getWorkEndDt() {
		return workEndDt;
	}
	public void setWorkEndDt(String workEndDt) {
		this.workEndDt = workEndDt;
	}
	
	
	
	public String getSch_final() {
		return sch_final;
	}
	public void setSch_final(String sch_final) {
		this.sch_final = sch_final;
	}
	public String getSch_major_code() {
		return sch_major_code;
	}
	public void setSch_major_code(String sch_major_code) {
		this.sch_major_code = sch_major_code;
	}
	public String getSch_coll() {
		return sch_coll;
	}
	public void setSch_coll(String sch_coll) {
		this.sch_coll = sch_coll;
	}
	public String getSch_code_nm() {
		return sch_code_nm;
	}
	public void setSch_code_nm(String sch_code_nm) {
		this.sch_code_nm = sch_code_nm;
	}
	public String getSch_major_nm() {
		return sch_major_nm;
	}
	public void setSch_major_nm(String sch_major_nm) {
		this.sch_major_nm = sch_major_nm;
	}
	public String getCareer_ind_code() {
		return career_ind_code;
	}
	public void setCareer_ind_code(String career_ind_code) {
		this.career_ind_code = career_ind_code;
	}
	public String getCa_comp_nm() {
		return ca_comp_nm;
	}
	public void setCa_comp_nm(String ca_comp_nm) {
		this.ca_comp_nm = ca_comp_nm;
	}
	public String getCa_work_content() {
		return ca_work_content;
	}
	public void setCa_work_content(String ca_work_content) {
		this.ca_work_content = ca_work_content;
	}
	public String getCa_work_bd() {
		return ca_work_bd;
	}
	public void setCa_work_bd(String ca_work_bd) {
		this.ca_work_bd = ca_work_bd;
	}
	public String getCa_work_ed() {
		return ca_work_ed;
	}
	public void setCa_work_ed(String ca_work_ed) {
		this.ca_work_ed = ca_work_ed;
	}
	
	@Override
	public String toString() {
		return "StareCertifiVO [sch_major_code=" + sch_major_code
				+ ", sch_coll=" + sch_coll + ", sch_code_nm=" + sch_code_nm
				+ ", sch_major_nm=" + sch_major_nm + ", sch_final=" + sch_final
				+ ", career_ind_code=" + career_ind_code + ", ca_comp_nm="
				+ ca_comp_nm + ", ca_work_content=" + ca_work_content
				+ ", ca_work_bd=" + ca_work_bd + ", ca_work_ed=" + ca_work_ed
				+ "]";
	}
	
}
