package dino.findkids.service;

import java.util.*;

import dino.Dto.*;

public interface FindKidsService {

	public int makeTCard(MakeTCardDto dto);
	public List<MakeTCardDto> kidsList();
	
}
