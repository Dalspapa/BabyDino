package dino.carenote.model;

import java.util.List;

import dino.dto.CareNoteDto;

public interface CareNoteDao {

	public List<CareNoteDto> careNoteList();

	public int writeCareNote(CareNoteDto dto);
}
