package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class RegisterController {

	@Autowired
	private UserService userService;

	@RequestMapping("/signup")
	public String index() {
		System.out.println("Creating Home");
		return "signup";
	}

	@RequestMapping("/login")
	public String login() {
		System.out.println("this is home url");
		return "login";
	}

	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String createUser(@ModelAttribute("user") User user, Model model) {
		System.out.println(user);
		this.userService.createUser(user);
		return "login";
	}

	@RequestMapping(path = "/userlogin", method = RequestMethod.POST)
	public String loginpage(@RequestParam("email") String em, @RequestParam("password") String pwd,
			HttpSession session) {
		System.out.println("Hello login");

		User user1 = this.userService.showLogin(em, pwd);
		System.out.println(user1);

		if (user1 != null) {
			session.setAttribute("loginuser", user1);
			return "redirect:/";
		} else {
			session.setAttribute("message", "Invalid email or password");
			return "redirect:/login";
		}

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.removeAttribute("loginuser");
		session.setAttribute("msg", "logout successfully");

		// Set headers to prevent caching
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
		response.setHeader("Cache-Control", "no-store");
		return "login";
	}

}
