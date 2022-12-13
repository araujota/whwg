package com.tyler.beltexam.controllers;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.tyler.beltexam.models.User;
import com.tyler.beltexam.models.loginUser;
import com.tyler.beltexam.services.UserService;

@Controller
public class ViewController {
	@Autowired
	private UserService userServ;
	
	@GetMapping("/game")
	public String game(HttpSession session, Model model) {
		Long id = (Long) session.getAttribute("userId");
		if (id != null) {
			model.addAttribute("loggeduser", userServ.getById(id));
			return "index.jsp";
		} else {
			return "redirect:/";
		}
		
	}
	
	@GetMapping("/")
	public String index() {
		return "home.jsp";
	}
	
	@GetMapping("/scores")
	public String scores(Model model, HttpSession session) {
		Long id = (Long) session.getAttribute("userId");
		if (id != null) {
			model.addAttribute("users", userServ.getAll());
			return "scores.jsp";
		} else {
			return "redirect:/";
		}
	}
	
	@GetMapping("/signin") 
		public String signIn(@ModelAttribute("loginUser") loginUser loginuser) {
		return "signin.jsp";
	}
	
	@GetMapping("/signup")
	public String signUp(@ModelAttribute("user") User user) {
		return "signup.jsp";
	}
	
	@GetMapping("/gameover") 
		public String gameOver(@RequestParam(value="score") Integer score, @ModelAttribute("user") User user, HttpSession session, Model model) {
		Long id = (Long) session.getAttribute("userId");
		if (id != null) {
			model.addAttribute("loggeduser", userServ.getById(id));
			return "gameover.jsp";
		} else {
			return "redirect:/";
		}
	}
	
	@GetMapping("/logout") 
		public String logout(HttpSession session) {
		session.removeAttribute("userId");
		return "redirect:/";
	}
	
}
