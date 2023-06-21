package com.cg.mediaplayeruser.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cg.mediaplayeruser.entites.Users;
import com.cg.mediaplayeruser.service.UserService;

@RestController
@RequestMapping("/users")
@CrossOrigin("*")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@PostMapping
	public Users addUser(@RequestBody Users user)
	{
		return userService.addUser(user);
	}
	
	@GetMapping
	public List<Users> getAllUsers()
	{
		return userService.getAllUsers();
	}
	
	@GetMapping("/get/{userId}")
	public Users getUserById( @PathVariable int userId) {
		return userService.getUserById(userId);
	}
	
	@DeleteMapping
	public String deleteAll()
	{
		return userService.deleteAllUsers();
	}
	
	@DeleteMapping("delete/{userId}")
	public String deleteByUserId(@PathVariable int userId)
	{
		return userService.deleteByUserId(userId);
		
	}
	
	
	
	

}
