package com.mp.dao;

@Repository
public class CGVMemberDaoImpl implements CGVMemberDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public boolean registerMember(CGVMemberDto dto) {
		int count = sqlSession.insert("register", dto);
		return count > 0 ? true : false;
	}

	@Override
	public String getId(String id) {
		
		String getId = sqlSession.selectOne("getId", id);
		if(getId == null) {
			getId = "";
		}
		return getId;
	}

	@Override
	public CGVMemberDto login(CGVMember Dto dto) {
		CGVMemberDto cgvMemberDto = sqlSession.selectOne("login", dto);
		return cgvMemberDto;
	}

}
