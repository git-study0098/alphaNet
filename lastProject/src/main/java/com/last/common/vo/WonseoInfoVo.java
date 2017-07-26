package com.last.common.vo;

public class WonseoInfoVo {
	
	private String numg_app_receipt_begin;
	private String numg_app_receipt_end;
	private String numg_stare_date;
	private String numg_code;
	private String numg_pass_p_anno_date;
	private int numg_num;
	private String numg_color;
	
	private String em_info_code;
	private String em_nm;
	private int em_pay_pr;
	private String em_numg_code;
	private String em_exkind;
	private String em_wr_pr_di;
	private int em_pass_p_pp;
	private int em_stare_p_pp;
	
	public String getEm_numg_code() {
		return em_numg_code;
	}
	public void setEm_numg_code(String em_numg_code) {
		this.em_numg_code = em_numg_code;
	}
	public String getEm_exkind() {
		return em_exkind;
	}
	public void setEm_exkind(String em_exkind) {
		this.em_exkind = em_exkind;
	}
	public String getEm_wr_pr_di() {
		return em_wr_pr_di;
	}
	public void setEm_wr_pr_di(String em_wr_pr_di) {
		this.em_wr_pr_di = em_wr_pr_di;
	}
	public int getEm_pass_p_pp() {
		return em_pass_p_pp;
	}
	public void setEm_pass_p_pp(int em_pass_p_pp) {
		this.em_pass_p_pp = em_pass_p_pp;
	}
	public int getEm_stare_p_pp() {
		return em_stare_p_pp;
	}
	public void setEm_stare_p_pp(int em_stare_p_pp) {
		this.em_stare_p_pp = em_stare_p_pp;
	}
	public String getNumg_code() {
		return numg_code;
	}
	public void setNumg_code(String numg_code) {
		this.numg_code = numg_code;
	}
	public String getNumg_stare_date() {
		return numg_stare_date;
	}
	public void setNumg_stare_date(String numg_stare_date) {
		this.numg_stare_date = numg_stare_date;
	}
	public int getEm_pay_pr() {
		return em_pay_pr;
	}
	public void setEm_pay_pr(int em_pay_pr) {
		this.em_pay_pr = em_pay_pr;
	}
	public String getEm_info_code() {
		return em_info_code;
	}
	public void setEm_info_code(String em_info_code) {
		this.em_info_code = em_info_code;
	}
	public String getEm_nm() {
		return em_nm;
	}
	public void setEm_nm(String em_nm) {
		this.em_nm = em_nm;
	}
	public String getNumg_app_receipt_begin() {
		return numg_app_receipt_begin;
	}
	public void setNumg_app_receipt_begin(String numg_app_receipt_begin) {
		this.numg_app_receipt_begin = numg_app_receipt_begin;
	}
	public String getNumg_app_receipt_end() {
		return numg_app_receipt_end;
	}
	public void setNumg_app_receipt_end(String numg_app_receipt_end) {
		this.numg_app_receipt_end = numg_app_receipt_end;
	}
	public String getNumg_pass_p_anno_date() {
		return numg_pass_p_anno_date;
	}
	public void setNumg_pass_p_anno_date(String numg_pass_p_anno_date) {
		this.numg_pass_p_anno_date = numg_pass_p_anno_date;
	}
	public String getNumg_color() {
		return numg_color;
	}
	public void setNumg_color(String numg_color) {
		this.numg_color = numg_color;
	}
	public int getNumg_num() {
		return numg_num;
	}
	public void setNumg_num(int numg_num) {
		this.numg_num = numg_num;
	}
	@Override
	public String toString() {
		return "WonseoInfoVo [em_info_code=" + em_info_code + ", em_nm="
				+ em_nm + ", numg_app_receipt_begin=" + numg_app_receipt_begin
				+ ", numg_app_receipt_end=" + numg_app_receipt_end
				+ ", numg_stare_date=" + numg_stare_date + ", em_pay_pr="
				+ em_pay_pr + ", numg_code=" + numg_code + "]";
	}
	
	
	
}
