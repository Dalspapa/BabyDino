package dino.dto;

public class ChatRoomJoinDto {
	
	private int idx;
	private int d_member_idx;
	private int d_chatroom_idx;
	
	
	public ChatRoomJoinDto() {
		super();
	}


	public ChatRoomJoinDto(int idx, int d_member_idx, int d_chatroom_idx) {
		super();
		this.idx = idx;
		this.d_member_idx = d_member_idx;
		this.d_chatroom_idx = d_chatroom_idx;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
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
		String str = "채팅룸 가입 회원의 고유번호" + d_member_idx + "\n채팅룸 고유번호" + d_chatroom_idx;
		System.out.println(str);
		return str; 
	}
}
