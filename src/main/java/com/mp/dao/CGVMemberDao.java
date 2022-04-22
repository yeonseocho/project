package com.mp.dao;

import com.mp.model.CGVMemberDto;

public interface CGVMemberDao {
	public boolean registerMember(CGVMemberDto dto);
	public String getId(String id);
	public CGVMemberDto login(CGVMemberDto dto);
}