package com.mp.svc;

import com.mp.model.CGVMemberDto;

public interface CGVMemberService {
	public boolean registerMember(CGVMemberDto dto);
	public boolean getId(String id);
	public CGVMemberDto login(CGVMemberDto dto);
}