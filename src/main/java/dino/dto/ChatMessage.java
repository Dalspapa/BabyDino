package dino.dto;

public class ChatMessage {

	private int id;
	private int roomId;
	private String writer;
	private String body;
	
	public ChatMessage() {
		super();
	}

	public ChatMessage(int id, int roomId, String writer, String body) {
		super();
		this.id = id;
		this.roomId = roomId;
		this.writer = writer;
		this.body = body;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}
	
	
	

}
