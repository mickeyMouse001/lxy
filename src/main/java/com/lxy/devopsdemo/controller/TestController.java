package com.lxy.devopsdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/t")
public class TestController {
	
	@GetMapping("/hello")
	public String test(String name){
		System.out.println("hell----"+name);
		return "hell----"+name;
	}
}
