package dino.carenote.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.CareNoteDto;

public class CareNoteDaoImpl implements CareNoteDao {

	private SqlSessionTemplate sqlMap;

	public CareNoteDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<CareNoteDto> careNoteList() {

		List<CareNoteDto> list=sqlMap.selectList("careNoteList");
		return list;
	}

	public int writeCareNote(CareNoteDto dto) {
		int result=sqlMap.insert("writeCareNote",dto);
		return result;
	}
}
