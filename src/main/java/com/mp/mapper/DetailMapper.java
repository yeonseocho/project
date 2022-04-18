package com.mp.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;


import com.mp.vo.DetailVO;

@Mapper
public interface DetailMapper {
	int addReview(DetailVO detail);


	List<Map<String, Object>> reviewList();

	List<Map<String, Object>> getDetail(int num);


}