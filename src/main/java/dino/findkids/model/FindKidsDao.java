package dino.findkids.model;

import java.util.*;

import dino.Dto.*;

public interface FindKidsDao {
	
	public int makeTCard(MakeTCardDto dto);
	public List<MakeTCardDto> kidsList();
}
