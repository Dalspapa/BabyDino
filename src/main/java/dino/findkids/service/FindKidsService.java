package dino.findkids.service;

import java.util.*;

import dino.Dto.MakeTCardDto;
import dino.findkids.model.KidInfoDto;

public interface FindKidsService {

	public int makeTCard(MakeTCardDto dto);
	public List<MakeTCardDto> kidsList();
	//아이카드 상세내역
	public KidInfoDto kidInfo(int idx);
	
}
