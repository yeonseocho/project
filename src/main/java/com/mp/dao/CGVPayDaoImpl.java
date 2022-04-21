package com.mp.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CGVPayDaoImpl implements CGVPayDao{

	@Autowired
	SqlSession session;
	
	@Override
	public boolean payTicket(CGVPayDto dto) {
		int count = session.insert("CGVPay", dto);
		
		return count > 0 ? true : false;
	}
	
}