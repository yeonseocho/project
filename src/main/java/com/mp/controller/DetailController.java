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
import com.mp.svc.DetailSVC;
import com.mp.vo.BoardVO;
import com.mp.vo.DetailVO;

@Controller
@RequestMapping("/review")
public class DetailController {

	@Autowired
	private DetailSVC svc;

	@Autowired
	ResourceLoader resourceLoader;

	@GetMapping("/add")
	public String addForm() {
		return "detail/addForm";
	}

	@PostMapping("/add")
	@ResponseBody
	public String save(HttpServletRequest request, DetailVO detail) {
		boolean saved = svc.addDetail(request, detail);
		return "saved = " + saved;
	}

	@GetMapping("/list")
	public String reviewList(Model model) {
		model.addAttribute("list", svc.reviewList());
		return "review/list";
	}

	@GetMapping("/detail")
	public String detail(@RequestParam int num, Model model) {
		DetailVO detail = svc.detail(num);
		model.addAttribute("review", review);
		return "review/detail";
	}

	
/*	@PostMapping("/idcheck/{filename}")
	@ResponseBody
	public Map<String, Boolean> idcheck(@RequestParam String num) {
		boolean idcheck = svc.idcheck(num);
		Map<String, Boolean> map = new HashMap<>();
		map.put("idcheck", idcheck);
		return map;
	} */
