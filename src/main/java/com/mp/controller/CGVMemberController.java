package com.mp.controller;

import org.springframework.stereotype.Controller;

@Controller
public class CGVMemberController {

	@Autowired
	CGVMemberService cgvMemberService;

	private static Logger logger = LoggerFactory.getLogger(CGVInfoController.class);

	@RequestMapping(value = "moveLogin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String moveLogin() {
		logger.info("moveLogin");
		return "login";
	}

	@RequestMapping(value = "moveRegister.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String moveRegister() {
		logger.info("moveRegister");
		return "register";
	}

	@RequestMapping(value = "moveMain.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String moveMain() {
		logger.info("moveMain");
		return "main";
	}

	@ResponseBody
	@RequestMapping(value = "idCheck.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String idCheck(String id) {
		logger.info("idCheck");
		boolean getId = cgvMemberService.getId(id);
		logger.info(getId + "");
		return getId + "";
	}

	@RequestMapping(value = "register.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String register(Model model, CGVMemberDto dto) {
		logger.info("register");
		boolean isSuccess = cgvMemberService.registerMember(dto);
		model.addAttribute("type", "register");
		model.addAttribute("isSuccess", isSuccess);
		
		return "process";

	}
	
	@RequestMapping(value = "login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, CGVMemberDto dto, HttpSession session) {
		logger.info("register");
		CGVMemberDto cgvMemberDto = cgvMemberService.login(dto);
		model.addAttribute("type", "login");
		
		if(cgvMemberDto != null) {
			model.addAttribute("isSuccess", true);
			model.addAttribute("name", cgvMemberDto.getName());
			session.setAttribute("login", cgvMemberDto);
		}else {
			model.addAttribute("isSuccess", false);
		}
		
		return "process";

	}
	
	@RequestMapping(value = "logout.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) {
		logger.info("logout");
		session.invalidate();
		
		return "redirect:/moveMain.do";

	}
}
