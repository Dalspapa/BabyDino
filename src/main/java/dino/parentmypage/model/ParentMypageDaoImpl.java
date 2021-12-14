package dino.parentmypage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dino.dto.KidDto;

public class ParentMypageDaoImpl implements ParentMypageDao {

	private SqlSessionTemplate sqlMap;

	public ParentMypageDaoImpl(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	//start

	//진행중 돌봄 목록
	public List<ParentMypageDto> proceedingMain_ing(int idx) {
		List<ParentMypageDto> list = sqlMap.selectList("proceedingMain_ing", idx);
		return list;
	}

	//완료된 돌봄 목록
	public List<ParentMypageDto> proceedingMain_done(int idx) {
		List<ParentMypageDto> list = sqlMap.selectList("proceedingMain_done", idx);
		return list;
	}

	//돌봄 진행 페이지
	public ParentMypageDto caring(int idx) {
		ParentMypageDto dto = sqlMap.selectOne("caringPage",idx);
		return dto;
	}

	//아이카드 리스트 페이지
	public List<ParentMypageDto> kidsCardList(int idx) {
		List<ParentMypageDto> list = sqlMap.selectList("kidsCard", idx);
		return list;
	}

	//돌봄 노트 리스트 페이지
	public List<ParentMypageDto> careNoteList(int idx) {
		List<ParentMypageDto> list = sqlMap.selectList("careNoteList", idx);
		return list;
	}
}

