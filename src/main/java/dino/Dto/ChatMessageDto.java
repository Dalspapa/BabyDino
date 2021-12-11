package dino.dto;

import java.sql.*;

public class ChatMessageDto {

	private int idx;
	private String message;
	private Date time;
	private int d_member_idx;
	private int d_chatroom_idx;
	
	
	public ChatMessageDto() {
		super();
	}


	public ChatMessageDto(int idx, String message, Date time, int d_member_idx, int d_chatroom_idx) {
		super();
		this.idx = idx;
		this.message = message;
		this.time = time;
		this.d_member_idx = d_member_idx;
		this.d_chatroom_idx = d_chatroom_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public Date getTime() {
		return time;
	}


	public void setTime(Date time) {
		this.time = time;
	}


	public int getD_member_idx() {
		return d_member_idx;
	}


	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}


	public int getD_chatroom_idx() {
		return d_chatroom_idx;
	}


	public void setD_chatroom_idx(int d_chatroom_idx) {
		this.d_chatroom_idx = d_chatroom_idx;
	}
	
	
	@Override
	public String toString() {
		String str = "메세지" + message + "\n작성시간" + time + "\n작성자의 고유번호" + d_member_idx + "채팅룸 고유번호" + d_chatroom_idx ;
		System.out.println(str);
		return str; 
	}

}
