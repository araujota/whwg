package com.tyler.beltexam.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tyler.beltexam.models.User;
import com.tyler.beltexam.models.loginUser;
import com.tyler.beltexam.services.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userServ;

	@PostMapping("/create")
	public String createUser(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
		User newUser = userServ.createUser(user, result);
		if (newUser == null) {
			model.addAttribute("loginuser", new loginUser());
			return "redirect:/signup";
		} else {
			session.setAttribute("userId", newUser.getId());
			return "redirect:/game";
		}
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("loginUser") loginUser loginuser, BindingResult result, Model model, HttpSession session) {
		User user = userServ.login(loginuser, result);
		if (user != null) {
			session.setAttribute("userId", user.getId());
			return "redirect:/game";
		} else {
			model.addAttribute("user", new User());
			return "signin.jsp";
		}
	}
	
	@PutMapping("/{id}/updatescore")
	public String update(@Valid @ModelAttribute("user") User user, BindingResult result) {
		userServ.updateUser(user);
		return "redirect:/scores";
	}
	
		
}
