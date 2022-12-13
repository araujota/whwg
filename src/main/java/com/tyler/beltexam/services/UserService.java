package com.tyler.beltexam.services;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.tyler.beltexam.models.User;
import com.tyler.beltexam.models.loginUser;
import com.tyler.beltexam.repositories.UserRepo;

@Service
public class UserService {
	@Autowired
	private UserRepo userRepo;
	
	public User createUser(User user, BindingResult result) {
		if (!user.getPassword().equals(user.getConfirmPass())) {
			result.rejectValue("password", "Matches", "Passwords must match!");
		
		} 
		
		Optional<User> existingUser = userRepo.findOneByUserName(user.getUserName());
		if (existingUser.isPresent()) {
			result.rejectValue("userName", "Taken", "Username is already taken!");
		}
		
		if (result.hasErrors()) {
			return null;
		} else {
			return userRepo.save(user);
		}
	}
	
	public List<User> getAll() {
		return userRepo.findByOrderByScoreDesc();
	}
	
	public User updateUser(User user) {
		return userRepo.save(user);
	}
	
	public User getById(Long id) {
		return userRepo.getById(id);
	}
	
	public User login(loginUser loginuser, BindingResult result) {
		Optional<User> optUser = userRepo.findOneByUserName(loginuser.getUsername());
		if (optUser.isPresent()) {
			User user = optUser.get();
			if (user.getPassword().equals(loginuser.getPassword())) {
				return user;
			}
			result.rejectValue("password", "Matches", "Invalid Username/Password" );
			return null;
		} else {
			result.rejectValue("username", "Matches", "Invalid Username/Password" );
			return null;
		}
	}
}
