package dino.carenote.service;

import java.util.List;

import dino.dto.CareNoteDto;

public interface CareNoteService {

	public List<CareNoteDto> careNoteList();

	/**
	 * 캐어노트작성
	 * @param dto
	 * @return
	 */
	public int writeCareNote(CareNoteDto dto);
}
