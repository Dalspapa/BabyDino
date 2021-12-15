package dino.chat.model;

public class ChatListVo {

	private int idx;
	private int sender;
	private int receiver;
	private String sender_name;
	private int sender_type;
	private String receiver_name;
	private int receiver_type;
	private String last_message;
	private String last_send_time;
	private int last_cm_idx;
	private int last_read;
	private int last_m_idx;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getSender() {
		return sender;
	}

	public void setSender(int sender) {
		this.sender = sender;
	}

	public int getReceiver() {
		return receiver;
	}

	public void setReceiver(int receiver) {
		this.receiver = receiver;
	}

	public String getSender_name() {
		return sender_name;
	}

	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}

	public int getSender_type() {
		return sender_type;
	}

	public void setSender_type(int sender_type) {
		this.sender_type = sender_type;
	}

	public String getReceiver_name() {
		return receiver_name;
	}

	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}

	public int getReceiver_type() {
		return receiver_type;
	}

	public void setReceiver_type(int receiver_type) {
		this.receiver_type = receiver_type;
	}

	public String getLast_message() {
		return last_message;
	}

	public void setLast_message(String last_message) {
		this.last_message = last_message;
	}

	public String getLast_send_time() {
		return last_send_time;
	}

	public void setLast_send_time(String last_send_time) {
		this.last_send_time = last_send_time;
	}

	public int getLast_cm_idx() {
		return last_cm_idx;
	}

	public void setLast_cm_idx(int last_cm_idx) {
		this.last_cm_idx = last_cm_idx;
	}

	public int getLast_read() {
		return last_read;
	}

	public void setLast_read(int last_read) {
		this.last_read = last_read;
	}

	public int getLast_m_idx() {
		return last_m_idx;
	}

	public void setLast_m_idx(int last_m_idx) {
		this.last_m_idx = last_m_idx;
	}

//	private int room_idx;
//	private int sender;
//	private int receiver;
//	private String sender_id;
//	private String sender_name;
//	private int sender_type;
//	private String receiver_id;
//	private String receiver_name;
//	private int receiver_type;
//	private String message;
//	private String send_time;
//	private int read;
//	private int last_sender;
//	private int message_idx;
//
//	public ChatListVo() {
//		super();
//	}
//
//	public ChatListVo(int room_idx, int sender, int receiver, String sender_id, String sender_name, int sender_type,
//			String receiver_id, String receiver_name, int receiver_type, String message, String send_time, int read,
//			int last_sender, int message_idx) {
//		super();
//		this.room_idx = room_idx;
//		this.sender = sender;
//		this.receiver = receiver;
//		this.sender_id = sender_id;
//		this.sender_name = sender_name;
//		this.sender_type = sender_type;
//		this.receiver_id = receiver_id;
//		this.receiver_name = receiver_name;
//		this.receiver_type = receiver_type;
//		this.message = message;
//		this.send_time = send_time;
//		this.read = read;
//		this.last_sender = last_sender;
//		this.message_idx = message_idx;
//	}
//
//	public int getRoom_idx() {
//		return room_idx;
//	}
//
//	public void setRoom_idx(int room_idx) {
//		this.room_idx = room_idx;
//	}
//
//	public int getSender() {
//		return sender;
//	}
//
//	public void setSender(int sender) {
//		this.sender = sender;
//	}
//
//	public int getReceiver() {
//		return receiver;
//	}
//
//	public void setReceiver(int receiver) {
//		this.receiver = receiver;
//	}
//
//	public String getSender_id() {
//		return sender_id;
//	}
//
//	public void setSender_id(String sender_id) {
//		this.sender_id = sender_id;
//	}
//
//	public String getSender_name() {
//		return sender_name;
//	}
//
//	public void setSender_name(String sender_name) {
//		this.sender_name = sender_name;
//	}
//
//	public int getSender_type() {
//		return sender_type;
//	}
//
//	public void setSender_type(int sender_type) {
//		this.sender_type = sender_type;
//	}
//
//	public String getReceiver_id() {
//		return receiver_id;
//	}
//
//	public void setReceiver_id(String receiver_id) {
//		this.receiver_id = receiver_id;
//	}
//
//	public String getReceiver_name() {
//		return receiver_name;
//	}
//
//	public void setReceiver_name(String receiver_name) {
//		this.receiver_name = receiver_name;
//	}
//
//	public int getReceiver_type() {
//		return receiver_type;
//	}
//
//	public void setReceiver_type(int receiver_type) {
//		this.receiver_type = receiver_type;
//	}
//
//	public String getMessage() {
//		return message;
//	}
//
//	public void setMessage(String message) {
//		this.message = message;
//	}
//
//	public String getSend_time() {
//		return send_time;
//	}
//
//	public void setSend_time(String send_time) {
//		this.send_time = send_time;
//	}
//
//	public int getRead() {
//		return read;
//	}
//
//	public void setRead(int read) {
//		this.read = read;
//	}
//
//	public int getLast_sender() {
//		return last_sender;
//	}
//
//	public void setLast_sender(int last_sender) {
//		this.last_sender = last_sender;
//	}
//
//	public int getMessage_idx() {
//		return message_idx;
//	}
//
//	public void setMessage_idx(int message_idx) {
//		this.message_idx = message_idx;
//	}
//
//	@Override
//	public String toString() {
//		String str = 
//				"room_idx : " + room_idx + "\n" +
//				"sender : " + sender + "\n" + 
//				"receiver : " + receiver + "\n" +  
//				"sender_id : " + sender_id + "\n" +  
//				"sender_name : " + sender_name + "\n" + 
//				"sender_type : " + sender_type + "\n" + 
//				"receiver_id : " + receiver_id + "\n" + 
//				"receiver_name : " + receiver_name + "\n" +  
//				"receiver_type : " + receiver_type + "\n" + 
//				"message : " + message + "\n" + 
//				"send_time : " + send_time + "\n" + 
//				"read : " + read + "\n" + 
//				"last_sender : " + last_sender + "\n" + 
//				"message_idx : " + message_idx;
//		System.out.println(str);
//		return str;
//	}
}
