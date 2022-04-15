package com.mp.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.vo.BoardVO;

@Mapper
public interface BoardMapper {
	int addBoard(BoardVO board);

	int addFileInfo(Map<String, Object> map);

	List<Map<String, Object>> boardList();

	List<Map<String, Object>> getDetail(int num);

	String getFilename(int num);

	int deleteFileInfo(int num);

}
