package com.mp.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mp.mapper.DetailMapper;
import com.mp.vo.DetailVO;

@Repository
public class DetailDAO {

	@Autowired
	private DetailMapper detailMapper;

	public boolean addDetail(DetailVO detail) {
		return detailMapper.addDetail(detail) > 0;

	}

	public boolean addFileInfo(Map<String, Object> map) {
		return detailMapper.addFileInfo(map) > 0;

	}

	public List<Map<String, Object>> detailList() {
		return detailMapper.detailList();
	}

	public List<Map<String, Object>> detail(int num) {
		return detailMapper.getDetail(num);

	}

	public String getFilename(int num) {
		return detailMapper.getFilename(num);
	}

	public boolean deleteFileInfo(int num) {
		return detailMapper.deleteFileInfo(num) > 0;
	}

}