package com.last.common.vo;

public class StareCertifiVO {
	
	private String sch_major_code; //학과분류
	private String sch_coll; 		//졸업여부
	private String sch_code_nm;		//학교명
	private String sch_major_nm;	//학과명
	
	private String career_ind_code;	//업무분야
	private String career_job_code;	//직무분야
	private String ca_comp_nm;		//회사명
	private String ca_work_content;	//업무내용
	private String ca_work_bd;	//근무시작일
	private String ca_work_ed;	//근무종료일
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
	public String getCareer_job_code() {
		return career_job_code;
	}
	public void setCareer_job_code(String career_job_code) {
		this.career_job_code = career_job_code;
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
				+ ", sch_major_nm=" + sch_major_nm + ", career_ind_code="
				+ career_ind_code + ", career_job_code=" + career_job_code
				+ ", ca_comp_nm=" + ca_comp_nm + ", ca_work_content="
				+ ca_work_content + ", ca_work_bd=" + ca_work_bd
				+ ", ca_work_ed=" + ca_work_ed + "]";
	}
	
	
}
