package com.fis.cdd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fis.cdd.entity.User;
import com.fis.cdd.service.UserService;

@Controller
public class LoginController {
	// @Autowired
	// private UsersDAO usersDAO;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login")
	public String display() {
		return "login";
	}

	@RequestMapping(value = "/doLogin")
	public String login(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		String message = "";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = null;
		try {
			user = userService.checkLogin(username, password);
		} catch (Exception e) {
			message = e.getMessage();
		}

		if (user == null) {
			message = "username and password invalid!";
		} else {
			message = "login success!" + "\n hello: " + username;
		}
		model.addAttribute("message", message);
		return "doLogin";
	}
}
