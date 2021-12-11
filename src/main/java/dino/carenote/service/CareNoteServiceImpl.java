package dino.carenote.service;

import java.util.List;

import dino.dto.CareNoteDto;
import dino.carenote.model.CareNoteDao;

public class CareNoteServiceImpl implements CareNoteService {

	private CareNoteDao careNoteDao;

	public CareNoteDao getCareNoteDao() {
		return careNoteDao;
	}

	public void setCareNoteDao(CareNoteDao careNoteDao) {
		this.careNoteDao = careNoteDao;
	}

	public List<CareNoteDto> careNoteList() {
		List<CareNoteDto> list=careNoteDao.careNoteList();
		return list;
	}

	public int writeCareNote(CareNoteDto dto) {
		int result=careNoteDao.writeCareNote(dto);
		return result;
	}
}
