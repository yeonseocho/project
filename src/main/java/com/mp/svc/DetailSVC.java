package com.mp.svc;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mp.dao.DetailDAO;
import com.mp.vo.AttachVO;
import com.mp.vo.BoardVO;
import com.mp.vo.DattachVO;
import com.mp.vo.DetailVO;

@Service
public class DetailSVC {
	@Autowired
	private DetailDAO dao;

	public boolean addDetail(DetailVO detail) {
		return dao.addDetail(detail);
	}

	public boolean addDetail(HttpServletRequest request, DetailVO detail, MultipartFile[] mfiles) {
		boolean saved = addDetail(detail); // 글 저장
		int detail_num = detail.getNum(); // 글 저장시 자동증가 필드
		if (!saved) {
			System.out.println("글 저장 실패");
			return false;
		}

		ServletContext context = request.getServletContext();
		String savePath = context.getRealPath("/WEB-INF/upload");
		int fileCnt = mfiles.length;
		int saveCnt = 0;
		try {
			for (int i = 0; i < mfiles.length; i++) {
				String filename = mfiles[i].getOriginalFilename();
				mfiles[i].transferTo(new File(savePath + "/" + filename)); // 서버측 디스크
				Map<String, Object> map = new HashMap<>();
				map.put("detail_num", detail_num);
				map.put("filename", filename);
				map.put("filesize", mfiles[i].getSize());
				boolean fSaved = dao.addFileInfo(map); // attach 테이블에 파일정보 저장
				if (fSaved)
					saveCnt++;
			}
			return fileCnt == saveCnt ? true : false;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public List<DetailVO> detailList() {
		List<Map<String, Object>> list = dao.detailList();
		List<DetailVO> list2 = new ArrayList<>();

		int prev_num = 0;
		for (int i = 0; i < list.size(); i++) {
			int dnum = (int) list.get(i).get("num");
			DetailVO d = new DetailVO(dnum);
			if (list2.contains(new DetailVO(dnum)))// 첨부파일이 다수개라서 중복되는 행이 있다면...

			{
				DetailVO _detail = list2.get(list2.size() - 1);
				DattachVO att = new DattachVO();
				att.setNum((int) list.get(i).get("att_num"));
				att.setFilename((String) list.get(i).get("filename"));
				att.setFilesize((int) list.get(i).get("filesize"));
				_detail.dattach.add(att);
				continue;
			}

			// 첨부파일이 없거나 한개인 게시글이라면...
			Map<String, Object> m = list.get(i);
			DetailVO detail = new DetailVO();
			detail.setNum(dnum);
			detail.setTitle((String) m.get("title"));
			detail.setDirector((String) m.get("director"));
			detail.setActor((String) m.get("actor"));
			detail.setMovietime((String) m.get("movietime"));
			detail.setGrade((String) m.get("grade"));
			detail.setContents((String) m.get("contents"));

			if (m.get("filename") != null) // 첨부파일을 가진 글이라면...
			{
				DattachVO att = new DattachVO();
				att.setNum((int) list.get(i).get("att_num"));
				att.setFilename((String) list.get(i).get("filename"));
				att.setFilesize((int) list.get(i).get("filesize"));
				detail.dattach.add(att);
			}
			list2.add(detail);

		} // end of for()
		return list2;

	}

	public String getFilename(int num) {
		return dao.getFilename(num);
	}

	public DetailVO detail(int num) {
		List<Map<String, Object>> list = dao.detail(num);
		DetailVO detail = new DetailVO();
		int size = list.size();
		for (int i = 0; i < size; i++) {
			Map<String, Object> map = list.get(i);
			if (i == 0) {
				detail.setNum((int) map.get("num"));
				detail.setTitle((String) map.get("title"));
				detail.setDirector((String) map.get("director"));
				detail.setActor((String) map.get("actor"));
				detail.setMovietime((String) map.get("movietime"));
				detail.setGrade((String) map.get("grade"));
				detail.setContents((String) map.get("contents"));
			}
			Object obj = map.get("filename");
			if (obj != null) { // 파일 정보 추출
				DattachVO att = new DattachVO();
				att.setNum((int) map.get("att_num"));
				att.setFilename((String) map.get("filename"));
				att.setFilesize((int) map.get("filesize"));
				detail.dattach.add(att);

			}

		}
		return detail;

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