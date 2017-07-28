package com.last.common.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class DocVO {
   
   private String mem_code;
   private String admin_code; //관리자 코드
   private String manager_dep; //관리자 부서
   private String stare_code; //응시코드
   private String sub_docu_approve_at; //학력요건승인
   private String sub_obstacle_condi_approve_at; //장애요건 승인
   private String sub_career_condi_approve_at; //경력요건 승인
   private String sub_disease_proof_at; //질병승인
   private String docu_code; //서류코드 
   private String docu_nm; //서류명 
   private String mem_nm; //회원명
   private String approve_at; //승인여부
   private String sub_code;//제출코드
   
   private String attach_file;   //첨부파일
   private Date enroll_date; //최종수정일
   private Date regist_date; //등록일
   private MultipartFile uploadfile;
   
   
   public String getMem_code() {
      return mem_code;
   }
   public void setMem_code(String mem_code) {
      this.mem_code = mem_code;
   }
   public String getAdmin_code() {
      return admin_code;
   }
   public void setAdmin_code(String admin_code) {
      this.admin_code = admin_code;
   }
   public String getManager_dep() {
      return manager_dep;
   }
   public void setManager_dep(String manager_dep) {
      this.manager_dep = manager_dep;
   }
   public String getStare_code() {
      return stare_code;
   }
   public void setStare_code(String stare_code) {
      this.stare_code = stare_code;
   }
   public String getSub_docu_approve_at() {
      return sub_docu_approve_at;
   }
   public void setSub_docu_approve_at(String sub_docu_approve_at) {
      this.sub_docu_approve_at = sub_docu_approve_at;
   }
   public String getSub_obstacle_condi_approve_at() {
      return sub_obstacle_condi_approve_at;
   }
   public void setSub_obstacle_condi_approve_at(
         String sub_obstacle_condi_approve_at) {
      this.sub_obstacle_condi_approve_at = sub_obstacle_condi_approve_at;
   }
   public String getSub_career_condi_approve_at() {
      return sub_career_condi_approve_at;
   }
   public void setSub_career_condi_approve_at(String sub_career_condi_approve_at) {
      this.sub_career_condi_approve_at = sub_career_condi_approve_at;
   }
   public String getSub_disease_proof_at() {
      return sub_disease_proof_at;
   }
   public void setSub_disease_proof_at(String sub_disease_proof_at) {
      this.sub_disease_proof_at = sub_disease_proof_at;
   }
   public String getDocu_code() {
      return docu_code;
   }
   public void setDocu_code(String docu_code) {
      this.docu_code = docu_code;
   }
   public String getDocu_nm() {
      return docu_nm;
   }
   public void setDocu_nm(String docu_nm) {
      this.docu_nm = docu_nm;
   }
   public String getMem_nm() {
      return mem_nm;
   }
   public void setMem_nm(String mem_nm) {
      this.mem_nm = mem_nm;
   }
   public String getApprove_at() {
      return approve_at;
   }
   public void setApprove_at(String approve_at) {
      this.approve_at = approve_at;
   }
   public String getSub_code() {
      return sub_code;
   }
   public void setSub_code(String sub_code) {
      this.sub_code = sub_code;
   }
   public String getAttach_file() {
      return attach_file;
   }
   public void setAttach_file(String attach_file) {
      this.attach_file = attach_file;
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
   public MultipartFile getUploadfile() {
      return uploadfile;
   }
   public void setUploadfile(MultipartFile uploadfile) {
      this.uploadfile = uploadfile;
   } 
   
   
   

}