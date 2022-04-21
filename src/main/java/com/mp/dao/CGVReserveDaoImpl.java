package com.mp.dao;

import org.springframework.stereotype.Repository;

@Repository
public class CGVReserveDaoImpl implements CGVReserveDao {

	@Autowired
	SqlSession session;

	@Override
	public boolean CGVReserve(CGVReserveDto dto) {
		int count = session.insert("CGVReserve", dto);

		return count > 0 ? true : false;
	}

	@Override
	public List<CGVReserveDto> getCGVReserveList(CGVReserveDto dto) {
		// TODO Auto-generated method stub
		List<CGVReserveDto> list = new ArrayList<CGVReserveDto>();
		list = session.selectList("getCGVReserveList", dto);
		return list;
	}

	@Override
	public List<CGVReserveDto> getPayJoinTable(CGVReserveDto dto) {
		List<CGVReserveDto> list = new ArrayList<CGVReserveDto>();
		list = session.selectList("selectMapping", dto);
		return list;
	}
	
	

}
