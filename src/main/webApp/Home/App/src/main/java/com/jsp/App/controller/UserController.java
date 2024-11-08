package com.jsp.App.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.jsp.App.Repository.UserRepository;
import com.jsp.App.entity.User;

@RestController
public class UserController 
{
	@Autowired
	private UserRepository repo;
	
	@GetMapping("/user")
   public List<User> getUser(Model model)
   {
	   return repo.findAll();
   }
	
	@PostMapping("/user")
	public User addUser(@RequestBody User user)
	{
		return repo.save(user); 
		//OR repo.save(user);
		//return "Record Inserted";
	}
	
	@GetMapping("/user/{mobile}")
	public String testUser(@PathVariable String mobile)
	{
		try
		{
		User user = repo.findById(mobile).get();
		return "valid";
		}
		catch (Exception e) 
		{
			return "in-valid";
		}
	}
}
