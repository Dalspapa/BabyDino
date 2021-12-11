package dino.dto;

import java.sql.*;

public class ReserveDto {
 
   private int idx;
   private int member_p_idx;
   private int kid_idx;
   private Date start_date;
   private Date end_date;
   private int cost;
   private int status;
   private Date match_date;
   private int teacher_idx;
   private int cancle_reason;
   
   public ReserveDto() {
      super();
   }

   public ReserveDto(int idx, int member_p_idx, int kid_idx, Date start_date, Date end_date, int cost, int status,
         Date match_date, int teacher_idx, int cancle_reason) {
      super();
      this.idx = idx;
      this.member_p_idx = member_p_idx;
      this.kid_idx = kid_idx;
      this.start_date = start_date;
      this.end_date = end_date;
      this.cost = cost;
      this.status = status;
      this.match_date = match_date;
      this.teacher_idx = teacher_idx;
      this.cancle_reason = cancle_reason;
   }

   public int getIdx() {
      return idx;
   }

   public void setIdx(int idx) {
      this.idx = idx;
   }

   public int getMember_p_idx() {
      return member_p_idx;
   }

   public void setMember_p_idx(int member_p_idx) {
      this.member_p_idx = member_p_idx;
   }

   public int getKid_idx() {
      return kid_idx;
   }

   public void setKid_idx(int kid_idx) {
      this.kid_idx = kid_idx;
   }

   public Date getStart_date() {
      return start_date;
   }

   public void setStart_date(Date start_date) {
      this.start_date = start_date;
   }

   public Date getEnd_date() {
      return end_date;
   }

   public void setEnd_date(Date end_date) {
      this.end_date = end_date;
   }

   public int getCost() {
      return cost;
   }

   public void setCost(int cost) {
      this.cost = cost;
   }

   public int getStatus() {
      return status;
   }

   public void setStatus(int status) {
      this.status = status;
   }

   public Date getMatch_date() {
      return match_date;
   }

   public void setMatch_date(Date match_date) {
      this.match_date = match_date;
   }

   public int getTeacher_idx() {
      return teacher_idx;
   }

   public void setTeacher_idx(int teacher_idx) {
      this.teacher_idx = teacher_idx;
   }

   public int getCancle_reason() {
      return cancle_reason;
   }

   public void setCancle_reason(int cancle_reason) {
      this.cancle_reason = cancle_reason;
   }

   @Override
      public String toString() {
        String str = "돌봄에약건에 대한 부모님 아이디: " + member_p_idx + " 돌봄 활동 시간: " +
      "선생님 아이디: " + teacher_idx + "시작일: " + start_date + "끝난일: " + end_date
      + "비용: " + cost + "아이카드 idx: " + kid_idx + "돌봄 진행 상태: " + status + "취소사유"
      + cancle_reason;
        System.out.println(str);
         return str;
      }
   
}   