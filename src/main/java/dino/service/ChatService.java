package dino.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dino.dao.ChatDao;

@Service
public class ChatService {

	@Autowired
	ChatDao chatDao;
	
	public void addMessage(int roomId, String writer, String body) {
		chatDao.addMessage(roomId, writer, body);
		
	}

	public List getAllMessages() {
		return chatDao.getAllMessages();
	}

	public List getMessagesFrom(int roomId, int from) {
		return chatDao.getMessagesFrom(roomId, from);
	}

	public void clearAllMessages() {
		chatDao.clearAllMessages();
		
	}

}
