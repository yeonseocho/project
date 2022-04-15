package com.mp.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mp.mapper.BoardMapper;
import com.mp.vo.BoardVO;

@Repository
public class BoardDAO {

	@Autowired
	private BoardMapper boardMapper;
	
	public boolean addBoard(BoardVO board)
	{
		return boardMapper.addBoard(board)>0;
	
		
	}
	public boolean addFileInfo(Map<String, Object>map)
	{
		return boardMapper.addFileInfo(map)>0;
	
		
	}
	public List<Map<String, Object>>boardList(){
		return boardMapper.boardList();
	}
	public List<Map<String, Object>>detail(int num){
		return boardMapper.getDetail(num);
		
	} 
	public String getFilename(int num) {
		return boardMapper.getFilename(num);
	}
	
	public boolean deleteFileInfo(int num) {
		return boardMapper.deleteFileInfo(num)>0;
	}
	
	
	

	
		
	
	
	
}
