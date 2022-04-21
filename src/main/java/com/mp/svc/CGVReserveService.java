package com.mp.svc;

import java.util.List;

import com.mp.model.CGVReserveDto;

public interface CGVReserveService {
	public boolean CGVReserve(CGVReserveDto dto);
	public List<CGVReserveDto> getCGVReserve(CGVReserveDto dto);
	public List<CGVReserveDto> getPayJoinTable(CGVReserveDto dto);
}