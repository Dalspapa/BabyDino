package dino.findkids.model;

import java.util.*;

public interface FindKidsService {

	public int makeTCard(FindKidsDTO dto);
	public List<FindKidsDTO> kidsList();
	
}
