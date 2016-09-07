package com.fis.cdd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fis.cdd.util.Constants;

@Controller
public class ProfileController implements Constants{

	
	@RequestMapping(value = "/profile")
	public String display() {
		return VIEW_PROFILE;
	}
	
	@RequestMapping(value = "/profile/newprofile")
	public String addNeProfile() {
		return VIEW_NEW_PROFILE;
	}
	

}
