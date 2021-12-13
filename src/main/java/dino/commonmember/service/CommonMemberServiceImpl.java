package dino.commonmember.service;

import dino.commonmember.model.CommonMemberDao;

public class CommonMemberServiceImpl implements CommonMemberService {
	
	private CommonMemberDao commonMemberDao;

	public CommonMemberDao getCommonMemberDao() {
		return commonMemberDao;
	}

	public void setCommonMemberDao(CommonMemberDao commonMemberDao) {
		this.commonMemberDao = commonMemberDao;
	}
	
	

}
