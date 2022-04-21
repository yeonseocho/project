package com.mp.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.CGVMemberDao;
import com.mp.model.CGVMemberDto;

@Service
public class CGVMemberServiceImpl implements CGVMemberService {

	@Autowired
	CGVMemberDao cgvMemberDao;
	
	@Override
	public boolean registerMember(CGVMemberDto dto) {
		
		return cgvMemberDao.registerMember(dto);
	}

	@Override
	public boolean getId(String id) {
		System.out.println("아이디는" + id);
		String getId = cgvMemberDao.getId(id);
		if(!getId.equals("") && getId != null) {
			return true;
		}
		return false;
		
	}

	@Override
	public CGVMemberDto login(CGVMemberDto dto) {
		
		return cgvMemberDao.login(dto);
	}

}