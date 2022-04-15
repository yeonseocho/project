package com.mp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mp.svc.InfoSVC;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;

@Api(value = "영화목록관리")
@AllArgsConstructor
@RequestMapping("/moviein")
@Controller
public class MovInfoController {

   @Autowired
	private InfoSVC infosvc;
   
   
    @ApiOperation(value = "일별 박스오피스 조회", httpMethod = "GET", notes = "4월 7일, 일별 박스오피스 조회 내역")
    @GetMapping("/moviess")
    public String searchDailyBoxOfficeList(Model model) {
    	
         StringBuilder str = infosvc.searchDailyBoxOfficeList();
         str.toString();
         model.addAttribute("str",str);
         return "movie/moviess";
    }
    
    @GetMapping("/detail")
    public String Babo() {
    	return "movie/detail";
    }
 
}