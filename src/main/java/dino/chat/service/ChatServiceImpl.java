package dino.chat.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Service;

import dino.dto.ChatMessageDto;
import dino.dto.ChatRoomDto;
import dino.chat.model.ChatDao;
import dino.chat.model.ChatListVo;
import dino.chat.model.ChatMessageVo;

@Service
public class ChatServiceImpl implements ChatService {

	private ChatDao chatDao;

	public ChatDao getChatDao() {
		return chatDao;
	}

	public void setChatDao(ChatDao chatDao) {
		this.chatDao = chatDao;
	}

	//채팅방리스트 출력
	public List<ChatListVo> getList(int sessionIdx) {
		List<ChatListVo> list = chatDao.getList(sessionIdx);
		return list;
	}

	//채팅방 체크
	public ChatRoomDto roomCheck(int sessionIdx, int receiverIdx) {
		
		Map map = new HashedMap();
		map.put("sessionIdx", sessionIdx);
		map.put("receiverIdx", receiverIdx);
		
		ChatRoomDto chatRoomDto = chatDao.getRoomInfo(map);
		return chatRoomDto;
	}

	//채팅방 생성
	public int addChatRoom(int sessionIdx, int receiverIdx) {
		
		Map map = new HashedMap();
		map.put("sessionIdx", sessionIdx);
		map.put("receiverIdx", receiverIdx);
		
		int result = chatDao.addChatRoom(map);
		return result;
	}

	//채팅메시지 불러오기
	public List<ChatMessageVo> getMessages(int roomIdx) {
		List<ChatMessageVo> messageList = chatDao.getMessages(roomIdx);
		return messageList;
	}

	public int saveChatMessage(ChatMessageDto chatMessageDto) {
		int result = chatDao.saveChatMessage(chatMessageDto);
		return result;
	}

	public int updateReadNum(int roomIdx, int sessionIdx) {
		
		Map map = new HashedMap();
		map.put("roomIdx", roomIdx);
		map.put("sessionIdx", sessionIdx);
		
		int result = chatDao.updateReadNum(map);
		return result;
	}

	public int getReadCount(int sIdx) {
		int readCnt = chatDao.getReadCount(sIdx);
		return readCnt;
	}

}
