package dino.findkids.model;

import java.util.*;

public interface FindKidsDAO {
	
	public int makeTCard(MakeTCardDTO dto);
	public List<MakeTCardDTO> kidsList();
}
