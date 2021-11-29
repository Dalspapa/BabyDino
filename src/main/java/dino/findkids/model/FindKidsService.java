package dino.findkids.model;

import java.util.*;

public interface FindKidsService {

	public int makeTCard(MakeTCardDTO dto);
	public List<MakeTCardDTO> kidsList();
	
}
