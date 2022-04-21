package com.mp.svc;

public interface CGVMemberService {
	public boolean registerMember(CGVMemberDto dto);
	public boolean getId(String id);
	public CGVMemberDto login(CGVMemberDto dto);
}