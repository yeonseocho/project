package com.mp.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.CGVPayDao;
import com.mp.model.CGVPayDto;

@Service
public class CGVPayServiceImpl implements CGVPayService {

	@Autowired
	CGVPayDao cgvPayDao;
	

	@Override
	public boolean payTicket(CGVPayDto dto) {
		// TODO Auto-generated method stub
		return cgvPayDao.payTicket(dto);
	}
	
	

}