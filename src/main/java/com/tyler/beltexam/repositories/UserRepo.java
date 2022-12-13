package com.tyler.beltexam.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tyler.beltexam.models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long>{
	
	public User getById(Long id);
	
	public List<User> findAll();
	
	public Optional<User> findOneByUserName(String userName);
	
	public List<User> findByOrderByScoreDesc();

}
