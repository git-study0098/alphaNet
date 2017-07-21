package com.last.common.vo;

public class WonseoInfoVo {
	
	private String em_info_code;
	private String em_nm;
	private String numg_app_receipt_begin;
	private String numg_app_receipt_end;
	private String numg_stare_date;
	private int em_pay_pr;
	private String numg_code;
	
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
	@Override
	public String toString() {
		return "WonseoInfoVo [em_info_code=" + em_info_code + ", em_nm="
				+ em_nm + ", numg_app_receipt_begin=" + numg_app_receipt_begin
				+ ", numg_app_receipt_end=" + numg_app_receipt_end
				+ ", numg_stare_date=" + numg_stare_date + ", em_pay_pr="
				+ em_pay_pr + ", numg_code=" + numg_code + "]";
	}
	
	
	
}
