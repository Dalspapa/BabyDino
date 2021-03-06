package dino.dto;

import java.sql.*;

public class ChatMessageDto {

	private int idx;
	private String message;
	private String send_time;
	private int d_member_idx;
	private int d_chatroom_idx;
	
	
	public ChatMessageDto() {
		super();
	}


	public ChatMessageDto(int idx, String message, String send_time, int d_member_idx, int d_chatroom_idx) {
		super();
		this.idx = idx;
		this.message = message;
		this.send_time = send_time;
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

	public String getSend_time() {
		return send_time;
	}


	public void setSend_time(String send_time) {
		this.send_time = send_time;
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
		String str = "메세지" + message + "\n작성시간" + send_time + "\n작성자의 고유번호" + d_member_idx + "채팅룸 고유번호" + d_chatroom_idx ;
		System.out.println(str);
		return str; 
	}

}
