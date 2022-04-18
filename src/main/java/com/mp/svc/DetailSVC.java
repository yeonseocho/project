package com.mp.svc;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mp.dao.BoardDAO;
import com.mp.dao.DetailDAO;
import com.mp.vo.AttachVO;
import com.mp.vo.BoardVO;
import com.mp.vo.DetailVO;

@Service
public class DetailSVC {
	@Autowired
	private DetailDAO dao;

	public boolean addDetail(DetailVO detail) {
		return dao.addDetail(detail);
	}

	
	public List<BoardVO> boardList() {
		List<Map<String, Object>> list = dao.boardList();
		List<BoardVO> list2 = new ArrayList<>();

		int prev_num = 0;
		for (int i = 0; i < list.size(); i++) {
			int bnum = (int) list.get(i).get("num");
			BoardVO b = new BoardVO(bnum);
			if (list2.contains(new BoardVO(bnum)))// 첨부파일이 다수개라서 중복되는 행이 있다면...

			{
				BoardVO _board = list2.get(list2.size() - 1);
				AttachVO att = new AttachVO();
				att.setNum((int) list.get(i).get("att_num"));
				att.setFilename((String) list.get(i).get("filename"));
				att.setFilesize((int) list.get(i).get("filesize"));
				_board.attach.add(att);
				continue;
			}

			// 첨부파일이 없거나 한개인 게시글이라면...
			Map<String, Object> m = list.get(i);
			BoardVO board = new BoardVO();
			board.setNum(bnum);
			board.setTitle((String) m.get("title"));
			board.setAuthor((String) m.get("author"));

			if (m.get("filename") != null) // 첨부파일을 가진 글이라면...
			{
				AttachVO att = new AttachVO();
				att.setNum((int) list.get(i).get("att_num"));
				att.setFilename((String) list.get(i).get("filename"));
				att.setFilesize((int) list.get(i).get("filesize"));
				board.attach.add(att);
			}
			list2.add(board);

		} // end of for()
		return list2;

	}

	public String getFilename(int num) {
		return dao.getFilename(num);
	}

	public BoardVO detail(int num) {
		List<Map<String, Object>> list = dao.detail(num);
		BoardVO board = new BoardVO();
		int size = list.size();
		for (int i = 0; i < size; i++) {
			Map<String, Object> map = list.get(i);
			if (i == 0) {
				board.setNum((int) map.get("num"));
				board.setTitle((String) map.get("title"));
				board.setAuthor((String) map.get("author"));
				board.setContents((String) map.get("contents"));
			}
			Object obj = map.get("filename");
			if (obj != null) { // 파일 정보 추출
				AttachVO att = new AttachVO();
				att.setNum((int) map.get("att_num"));
				att.setFilename((String) map.get("filename"));
				att.setFilesize((int) map.get("filesize"));
				board.attach.add(att);

			}

		}
		return board;

	}

	
	public boolean deleteFileInfo(int num, ResourceLoader resourceLoader) {
	      String filename = getFilename(num);
	      Resource resource = (Resource)resourceLoader.getResource("WEB-INF/upload/"+filename);
	      boolean deleted = false;
	      try {
	         String abPath = resource.getFile().getAbsolutePath();
	         File fileDel = new File(abPath);
	         deleted = fileDel.exists() ? fileDel.delete(): false;
	      }catch (Exception e) {
	         e.printStackTrace();
	      }
	      if(deleted) {
	         return dao.deleteFileInfo(num);
	      }
	      return false;
	   }
	
	public boolean idcheck(String num) {
		
		return false;
	}
}