package com.cg.mediaplayeruser.service;

import java.util.List;

import com.cg.mediaplayeruser.entites.Users;

public interface UserService {
	
	public Users addUser(Users user );
	
	public List<Users> getAllUsers();
	
	public Users getUserById(int userId);
	
	public String deleteAllUsers();
	
	public String deleteByUserId(int userId);
	

}
