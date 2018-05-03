package com.dorm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {

	@RequestMapping(value="404")
	public String getUrl() {
		return "error/"+404;
	}
	
	@RequestMapping("403")
	public String getUrl10() {
		return "error/403";
	}
	
	
	@RequestMapping("500")
	public String getUrl11() {
		return "error/500";
	}
	
	@RequestMapping("401") 
	public String getUrl9() {
		return "error/401";
	}
}
