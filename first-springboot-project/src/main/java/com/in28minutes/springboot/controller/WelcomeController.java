package com.in28minutes.springboot.controller;

import org.springframework.web.bind.annotation.RestController;

import com.in28minutes.springboot.BasicConfiguration;
import com.in28minutes.springboot.service.WelcomeService;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
 
@RestController
public class WelcomeController {
	//Auto wiring
	@Autowired
	private WelcomeService service;
	
	@Autowired
	private BasicConfiguration configuration;
	
	@RequestMapping("/welcome")
	public String Welcome(){
		return service.retrieveWelcomeMessage();
	}
	
	@RequestMapping("/dynamic-configuration")
	public Map dynamicConfiguration(){
		Map map = new HashMap();
		map.put("Message", configuration.getMessage());
		map.put("Number", configuration.getNumber());
		map.put("value", configuration.isValue());
		
		return map;
	}
}


