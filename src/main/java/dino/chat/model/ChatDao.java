package dino.chat.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import dino.dto.ChatMessageDto;
import dino.dto.ChatRoomDto;

public interface ChatDao {
//	public void add(Map<String, Object> param);

	public List<ChatListVo> getList(int sessionIdx);

	public ChatRoomDto getRoomInfo(Map map);

	public int addChatRoom(Map map);

	public List<ChatMessageVo> getMessages(int roomIdx);

	public int saveChatMessage(ChatMessageDto chatMessageDto);

	public int updateReadNum(Map map);

//	public ChatRoomDto findById(@Param("id") int id);
//
//	public void addMessage(Map<String, Object> param);
//
//	public List<ChatMessageDto> getMessages(@Param("roomId") int roomId, @Param("from") int from);
}
