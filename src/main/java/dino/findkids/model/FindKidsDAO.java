package dino.findkids.model;

import java.util.*;

public interface FindKidsDAO {
	
	public int makeTCard(FindKidsDTO dto);
	public List<FindKidsDTO> kidsList();
}
