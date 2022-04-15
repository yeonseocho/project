package com.mp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.mp.dao.UserMybatisDAO;
import com.mp.vo.User;

//@RestController
@RequestMapping("/mb")
@Controller
@SessionAttributes("uid")
public class UserMybatisController { // http://localhost/mb/list

	@Autowired
	private UserMybatisDAO dao;

	@GetMapping("/login") // get 이면 여기 post 면 밑
	public String form() {

		return "user/loginForm";
	}

	@PostMapping("/login")
	@ResponseBody
	public Map<String, Boolean> login(User user, Model m) {
		boolean ok = dao.login(user);
		if (ok) {
			m.addAttribute("uid", user.getUid());
		}
		Map<String, Boolean> map = new HashMap<>();
		map.put("ok", ok);
		return map;
	}

	@GetMapping("/logout") // http://localhost/jdbc/logout
	public String logout(SessionStatus status) {

		status.setComplete();
		return "redirect:/mb/login"; // spring (x) response.sendRedirect("/user/login");
	}

	@GetMapping("/list") // http://localhost/mb/list
	public String list2(@SessionAttribute(name = "uid", required = false) String uid, Model model) {
		if (uid == null) {
			return "redirect:/mb/login"; // 로그인 폼으로...
		} else {
			List<Map<String, String>> list = dao.getUserMap();
			model.addAttribute("list", list);
			return "user/userList";
		}
	}

	@GetMapping("/add")
	public String addUser() {

		return "user/addForm";

	}

	@PostMapping("/add")
	@ResponseBody
	public Map<String, Boolean> addUser(User user) {
		Map<String, Boolean> map = new HashMap<>();

		map.put("add", dao.insert(user) > 0 ? true : false);
		return map;
	}

	@GetMapping("/detail") // http://localhost/jdbc/detail
	public String detail(@RequestParam String userid, Model model) { // 일치시켜주면 자동으로 들어감
		User user = dao.selectById(userid);
		model.addAttribute("user", user);

		return "user/detail";
	}

	@GetMapping("/edit")
	public String edit(@RequestParam String userid, Model model) {
		User user = dao.selectById(userid);
		model.addAttribute("user", user);
		return "user/editUser";
	}

	@PostMapping("/update")
	@ResponseBody
	public Map<String, Boolean> update2(User user) {
//		uid를 키워드로 하여 phone을 갱신한다
		Map<String, String> pMap = new HashMap<>();
		pMap.put("uid", user.getUid());
		pMap.put("phone", user.getPhone());
		boolean updated = dao.updateByMap(pMap);
		Map<String, Boolean> map = new HashMap<>();
		map.put("updated", updated);
		return map;

	}

	@PostMapping("/delete")
	@ResponseBody
	public Map<String, Boolean> deleted(User user) {
		Map<String, Boolean> map = new HashMap<>();
		map.put("deleted", dao.delete(user) > 0 ? true : false);
		return map;
	}

	@PostMapping("/idcheck")
	@ResponseBody
	public Map<String, Boolean> idcheck(User user) {

		Map<String, Boolean> map = new HashMap<>();
		map.put("check", dao.idcheck(user));

		return map;
	}

}