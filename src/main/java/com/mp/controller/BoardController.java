package com.mp.controller;

import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.util.HashMap;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.multipart.MultipartFile;

import com.mp.svc.BoardSVC;
import com.mp.vo.BoardVO;

@Controller
@RequestMapping("/bbs")
public class BoardController {

	@Autowired
	private BoardSVC svc;

	@Autowired
	ResourceLoader resourceLoader;

	@GetMapping("/add")
	public String addForm() {
		return "board/addForm";
	}

	@PostMapping("/add")
	@ResponseBody
	public String save(@RequestParam("files") MultipartFile[] mfiles, HttpServletRequest request, BoardVO board) {
		boolean saved = svc.addBoard(request, board, mfiles);
		return "saved = " + saved;
	}

	@GetMapping("/list")
	public String boardList(Model model) {
		model.addAttribute("list", svc.boardList());
		return "board/list";
	}

	@GetMapping("/download/{filename}")
	public ResponseEntity<Resource> download( // http://localhost/file/download/sample.zip
			HttpServletRequest request, @PathVariable String filename) {
		Resource resource = (Resource) resourceLoader.getResource("WEB-INF/upload/" + filename);
		System.out.println("파일명:" + resource.getFilename());
		String contentType = null;
		try {
			contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
		} catch (IOException e) {
			e.printStackTrace();
		}

		if (contentType == null) {
			contentType = "application/octet-stream";
		}

		return ResponseEntity.ok().contentType(MediaType.parseMediaType(contentType))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
				.body(resource);
	}

	@GetMapping("/file/download/{num}")
	public ResponseEntity<Resource> fileDownload(@PathVariable int num, HttpServletRequest request) {
		// attach 테이블에서 att_num 번호를 이용하여 파일명을 구하여 위의 방법을 사용
		String filename = svc.getFilename(num);
		Resource resource = (Resource) resourceLoader.getResource("WEB-INF/upload/" + filename);
		// System.out.println("파일명:"+resource.getFilename());
		String contentType = null;
		try {
			contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
		} catch (IOException e) {
			e.printStackTrace();
		}

		if (contentType == null) {
			contentType = "application/octet-stream";
		}

		return ResponseEntity.ok().contentType(MediaType.parseMediaType(contentType))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
				.body(resource);
	}

	@GetMapping("/detail")
	public String detail(@RequestParam int num, Model model) {
		BoardVO board = svc.detail(num);
		model.addAttribute("board", board);
		return "board/detail";
	}
	
	@PostMapping("/delete")
	@ResponseBody
	public Map<String,Boolean> deleted(BoardVO board) {
		Map<String,Boolean> map = new HashMap<>();
		map.put("deleted", svc.deleted(board)>0);
		return map;
	}
	
	
	
	@PostMapping("/file/delete")
	@ResponseBody
	public Map<String, Boolean> deleteFileInfo(@RequestParam int num) {
		boolean deleted = svc.deleteFileInfo(num, resourceLoader); // resuourceLoader: 파일의 절대 경로 받을 때 필요한 코드.
		Map<String, Boolean> map = new HashMap<>();
		map.put("deleted", deleted);
		return map;
	}

	@PostMapping("/idcheck/{filename}")
	@ResponseBody
	public Map<String, Boolean> idcheck(@RequestParam String num) {
		boolean idcheck = svc.idcheck(num);
		Map<String, Boolean> map = new HashMap<>();
		map.put("idcheck", idcheck);
		return map;

	}
}
