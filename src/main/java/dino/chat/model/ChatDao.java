package dino.chat.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import dino.dto.ChatMessageDto;
import dino.dto.ChatRoomDto;

public interface ChatDao {

	public List<ChatListVo> getList(int sessionIdx);

	public ChatRoomDto getRoomInfo(Map map);

	public int addChatRoom(Map map);

	public List<ChatMessageVo> getMessages(int roomIdx);

	public int saveChatMessage(ChatMessageDto chatMessageDto);

	public int updateReadNum(Map map);

	public int getReadCount(int sIdx);

	public int updateStatusForChat(Map<String, Object> params);

}
