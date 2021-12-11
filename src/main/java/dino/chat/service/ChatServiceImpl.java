package dino.chat.service;

import java.util.HashMap;
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

	
	
	
//	public Map<String, Object> doAdd(Map<String, Object> param) {
//		chatDao.add(param);
//
//		Map<String, Object> rs = new HashMap<String, Object>();
//
//		rs.put("resultCode", "S-1");
//		rs.put("msg", "채팅방이 생성되었습니다.");
//		int id = ((BigInteger) param.get("id")).intValue();
//		rs.put("id", id);
//
//		return rs;
//	}

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

//	public ChatRoomDto findById(int id) {
//		return chatDao.findById(id);
//	}
//
//	public Map<String, Object> addMessage(Map<String, Object> param) {
//		chatDao.addMessage(param);
//
//		Map<String, Object> rs = new HashMap<String, Object>();
//
//		rs.put("resultCode", "S-1");
//		rs.put("msg", "채팅 메세지가 생성되었습니다.");
//		int id = ((BigInteger) param.get("id")).intValue();
//		rs.put("id", id);
//
//		return rs;
//	}
//
//	public List<ChatMessageDto> getMessages(int roomId, int from) {
//		return chatDao.getMessages(roomId, from);
//	}
}
