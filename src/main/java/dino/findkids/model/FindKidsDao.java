package dino.findkids.model;

import java.util.*;

import dino.Dto.MakeTCardDto;

public interface FindKidsDao {
	
	public int makeTCard(MakeTCardDto dto);
	public List<MakeTCardDto> kidsList();
	//아이카드 상세내역
	public KidInfoDto kidInfo(int idx);
}
