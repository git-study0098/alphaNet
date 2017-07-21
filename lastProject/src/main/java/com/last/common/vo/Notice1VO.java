package com.last.common.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Notice1VO {
	
	private String title;
	private String admin_code;
	private String manager_dep; //담당 부서명
	private String notice_code;
	private String notice_content;
	private String attach_file;	//첨부파일
	private Date enroll_date; //최종수정일
	private Date regist_date; //등록일
	private MultipartFile uploadfile;
	
	private String notice_kind; //고객의 소리 분류
	
	
	public String getNotice_kind() {
		return notice_kind;
	}
	public void setNotice_kind(String notice_kind) {
		this.notice_kind = notice_kind;
	}
	public String getManager_dep() {
		return manager_dep;
	}
	public void setManager_dep(String manager_dep) {
		this.manager_dep = manager_dep;
	}
	
	public String getAttach_file() {
		return attach_file;
	}
	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	public void setAttach_file(String attach_file) {
		this.attach_file = attach_file;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(String admin_code) {
		this.admin_code = admin_code;
	}
	public String getNotice_code() {
		return notice_code;
	}
	public void setNotice_code(String notice_code) {
		this.notice_code = notice_code;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	
	public Date getEnroll_date() {
		return enroll_date;
	}
	public void setEnroll_date(Date enroll_date) {
		this.enroll_date = enroll_date;
	}
	public Date getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}
	
	@Override
	public String toString() {
		return "Notice1VO [title=" + title + ", admin_code=" + admin_code
				+ ", manager_dep=" + manager_dep + ", notice_code="
				+ notice_code + ", notice_content=" + notice_content
				+ ", attach_file=" + attach_file + ", enroll_date="
				+ enroll_date + ", regist_date=" + regist_date
				+ ", uploadfile=" + uploadfile + ", notice_kind=" + notice_kind
				+ "]";
	}
	
	
}
