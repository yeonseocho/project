package com.mp.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mp.model.CGVMemberDto;

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
	public CGVMemberDto login(CGVMemberDto dto) {
		CGVMemberDto cgvMemberDto = sqlSession.selectOne("login", dto);
		return cgvMemberDto;
	}

}
