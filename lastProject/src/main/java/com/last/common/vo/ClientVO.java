package com.last.common.vo;

import java.util.Date;




public class ClientVO {

	private String client_code; //자동생성 시퀀스
	private String client_title; //제목
	private String client_consulting_kind; //상담구문
	private String client_process_state; //수집정보 동의
	private String client_process_state2; //수집정보 동의
	private String client_nm; //회원명
	private Date client_enRoll_date; // 등록일
	private String client_open_at;//공개여부
	private String client_attach_file; //첨부파일
	private String client_consulting_content; //내용
	private String client_manager_dep; //관리자 담당부서
	private Date client_reply_date; //문의사항 답해준 날짜
	private String client_reply_content; //답해준 내용
	private String admin_code;  //어드민코드(작성자 이름)
	private Date client_final_modi_date; //최종 수정일
	private String mem_code; //큐넷아이디
	private String client_type_di;//유형구문
	private String client_ph;  //번호
	private String client_bir;//생년월일
	private String client_add1;//주소1
	private String client_add2;//주소2
	private String client_add3;//주소3
	private String client_post_numb; //우편번호
	private String mem_enabled;
	private String stare_code; //수험번호
	private String mail_agree; //메일수신동의
	private String client_email; //메일
	private String notice_client_title; //공지사항제목
	private String notice_client_content;
	private String reply_state; 
	private String start_Date; 
	private String end_date; 
	
	 
	public String getStart_Date() {
		return start_Date;
	}
	public void setStart_Date(String start_Date) {
		this.start_Date = start_Date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getReply_state() {
		return reply_state;
	}
	public void setReply_state(String reply_state) {
		this.reply_state = reply_state;
	}
	public String getNotice_client_content() {
		return notice_client_content;
	}
	public void setNotice_client_content(String notice_client_content) {
		this.notice_client_content = notice_client_content;
	}
	public String getNotice_client_title() {
		return notice_client_title;
	}
	public void setNotice_client_title(String notice_client_title) {
		this.notice_client_title = notice_client_title;
	}
	public String getClient_process_state2() {
		return client_process_state2;
	}
	public void setClient_process_state2(String client_process_state2) {
		this.client_process_state2 = client_process_state2;
	}
	public String getClient_code() {
		return client_code;
	}
	public void setClient_code(String client_code) {
		this.client_code = client_code;
	}
	public String getClient_title() {
		return client_title;
	}
	public void setClient_title(String client_title) {
		this.client_title = client_title;
	}
	public String getClient_consulting_kind() {
		return client_consulting_kind;
	}
	public void setClient_consulting_kind(String client_consulting_kind) {
		this.client_consulting_kind = client_consulting_kind;
	}
	public String getClient_process_state() {
		return client_process_state;
	}
	public void setClient_process_state(String client_process_state) {
		this.client_process_state = client_process_state;
	}
	public String getClient_nm() {
		return client_nm;
	}
	public void setClient_nm(String client_nm) {
		this.client_nm = client_nm;
	}
	public Date getClient_enRoll_date() {
		return client_enRoll_date;
	}
	public void setClient_enRoll_date(Date client_enRoll_date) {
		this.client_enRoll_date = client_enRoll_date;
	}
	public String getClient_open_at() {
		return client_open_at;
	}
	public void setClient_open_at(String client_open_at) {
		this.client_open_at = client_open_at;
	}
	public String getClient_attach_file() {
		return client_attach_file;
	}
	public void setClient_attach_file(String client_attach_file) {
		this.client_attach_file = client_attach_file;
	}
	public String getClient_consulting_content() {
		return client_consulting_content;
	}
	public void setClient_consulting_content(String client_consulting_content) {
		this.client_consulting_content = client_consulting_content;
	}
	public String getClient_manager_dep() {
		return client_manager_dep;
	}
	public void setClient_manager_dep(String client_manager_dep) {
		this.client_manager_dep = client_manager_dep;
	}
	public Date getClient_reply_date() {
		return client_reply_date;
	}
	public void setClient_reply_date(Date client_reply_date) {
		this.client_reply_date = client_reply_date;
	}
	public String getClient_reply_content() {
		return client_reply_content;
	}
	public void setClient_reply_content(String client_reply_content) {
		this.client_reply_content = client_reply_content;
	}
	public String getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(String admin_code) {
		this.admin_code = admin_code;
	}
	public Date getClient_final_modi_date() {
		return client_final_modi_date;
	}
	public void setClient_final_modi_date(Date client_final_modi_date) {
		this.client_final_modi_date = client_final_modi_date;
	}
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
	}
	public String getClient_type_di() {
		return client_type_di;
	}
	public void setClient_type_di(String client_type_di) {
		this.client_type_di = client_type_di;
	}
	public String getClient_ph() {
		return client_ph;
	}
	public void setClient_ph(String client_ph) {
		this.client_ph = client_ph;
	}
	public String getClient_bir() {
		return client_bir;
	}
	public void setClient_bir(String client_bir) {
		this.client_bir = client_bir;
	}
	public String getClient_add1() {
		return client_add1;
	}
	public void setClient_add1(String client_add1) {
		this.client_add1 = client_add1;
	}
	public String getClient_add2() {
		return client_add2;
	}
	public void setClient_add2(String client_add2) {
		this.client_add2 = client_add2;
	}
	public String getClient_add3() {
		return client_add3;
	}
	public void setClient_add3(String client_add3) {
		this.client_add3 = client_add3;
	}
	public String getClient_post_numb() {
		return client_post_numb;
	}
	public void setClient_post_numb(String client_post_numb) {
		this.client_post_numb = client_post_numb;
	}
	public String getMem_enabled() {
		return mem_enabled;
	}
	public void setMem_enabled(String mem_enabled) {
		this.mem_enabled = mem_enabled;
	}
	public String getStare_code() {
		return stare_code;
	}
	public void setStare_code(String stare_code) {
		this.stare_code = stare_code;
	}
	public String getMail_agree() {
		return mail_agree;
	}
	public void setMail_agree(String mail_agree) {
		this.mail_agree = mail_agree;
	}
	public String getClient_email() {
		return client_email;
	}
	public void setClient_email(String client_email) {
		this.client_email = client_email;
	}

	
	
	
}
