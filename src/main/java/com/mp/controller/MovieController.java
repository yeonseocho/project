package com.mp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/movie")
@Controller
public class MovieController {
	@GetMapping("/main") // get 이면 여기 post 면 밑
	public String form() {

		return "movie/main";
	}
	
	
}
