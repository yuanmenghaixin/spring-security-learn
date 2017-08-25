package com.authority.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestIndexController {
	@RequestMapping(value = "/index")
	public String login(HttpServletResponse response, HttpServletRequest request) {
		return "/index";
	}
}
