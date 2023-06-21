package com.cg.mediaplayersecurity.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.cg.mediaplayersecurity.entity.UserCredentials;
import com.cg.mediaplayersecurity.repository.UserCredentialsRepository;


@Service
public class AuthServiceImpl  {
	
	@Autowired
	private UserCredentialsRepository userRepo;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private JwtService jwtService; 

	public String addUser(UserCredentials user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userRepo.save(user);
		return "user is added";
	}
	
	public String generateToken(String username)
	{
		return jwtService.generateToken(username);
	}
	
	public void validateToken(String token)
	{
		jwtService.validateToken(token);
	}
}
