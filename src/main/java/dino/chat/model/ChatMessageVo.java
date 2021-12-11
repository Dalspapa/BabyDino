package dino.chat.model;

public class ChatMessageVo {

	private int message_idx;
	private String message;
	private int d_member_idx;
	private int chatroom_idx;
	private String send_time;
	private int read;
	private String name;
	private int member_type;

	public ChatMessageVo() {
		super();
	}

	public ChatMessageVo(int message_idx, String message, int d_member_idx, int chatroom_idx, String send_time,
			int read, String name, int member_type) {
		super();
		this.message_idx = message_idx;
		this.message = message;
		this.d_member_idx = d_member_idx;
		this.chatroom_idx = chatroom_idx;
		this.send_time = send_time;
		this.read = read;
		this.name = name;
		this.member_type = member_type;
	}

	public int getMessage_idx() {
		return message_idx;
	}

	public void setMessage_idx(int message_idx) {
		this.message_idx = message_idx;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getD_member_idx() {
		return d_member_idx;
	}

	public void setD_member_idx(int d_member_idx) {
		this.d_member_idx = d_member_idx;
	}

	public int getChatroom_idx() {
		return chatroom_idx;
	}

	public void setChatroom_idx(int chatroom_idx) {
		this.chatroom_idx = chatroom_idx;
	}

	public String getSend_time() {
		return send_time;
	}

	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}

	public int getRead() {
		return read;
	}

	public void setRead(int read) {
		this.read = read;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMember_type() {
		return member_type;
	}

	public void setMember_type(int member_type) {
		this.member_type = member_type;
	}
	
	@Override
	public String toString() {
		String str =                         
				"message_idx : " + message_idx    + "\n" +
				"message : " + message            + "\n" +
				"d_member_idx : " + d_member_idx  + "\n" +
				"chatroom_idx : " + chatroom_idx  + "\n" +
				"send_time : " + send_time        + "\n" +
				"read : " + read                  + "\n" +
				"name : " + name                  + "\n" +
				"member_type : " + member_type;
		System.out.println(str);
		
		return str;
	}
	
}
