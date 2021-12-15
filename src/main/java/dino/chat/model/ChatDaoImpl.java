package dino.chat.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.ChatMessageDto;
import dino.dto.ChatRoomDto;

public class ChatDaoImpl implements ChatDao {

	private SqlSessionTemplate sqlMap;

	public ChatDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	
	//룸리스트 가져오기
	public List<ChatListVo> getList(int sessionIdx) {
		List<ChatListVo> list = sqlMap.selectList("getList", sessionIdx);
		return list;
	}
	
	//룸정보 가져오기
	public ChatRoomDto getRoomInfo(Map map) {
		ChatRoomDto chatRoomDto = sqlMap.selectOne("getInfo", map);
		return chatRoomDto;
	}
	
	//채팅방 생성 및 생성된 roomIdx가져오기.
	public int addChatRoom(Map map) {
		int result = sqlMap.insert("addChatRoom", map);
		return result;
	}




	public List<ChatMessageVo> getMessages(int roomIdx) {
		List<ChatMessageVo> messageList = sqlMap.selectList("getMessages", roomIdx);
		return messageList;
	}


	public int saveChatMessage(ChatMessageDto chatMessageDto) {
		int result = sqlMap.insert("saveChatMessage", chatMessageDto);
		return result;
	}


	public int updateReadNum(Map map) {
		int result = sqlMap.update("updateReadNum", map);
		return result;
	}

	
}
