package com.mp.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mp.vo.DetailVO;

@Mapper
public interface DetailMapper {
	int addDetail(DetailVO detail);

	int addFileInfo(Map<String, Object> map);

	List<Map<String, Object>> detailList();

	List<Map<String, Object>> getDetail(int num);

	String getFilename(int num);

	int deleteFileInfo(int num);

}