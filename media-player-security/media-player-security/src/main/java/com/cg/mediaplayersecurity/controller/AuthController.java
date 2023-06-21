package com.cg.mediaplayersecurity.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cg.mediaplayersecurity.dto.AuthRequest;
import com.cg.mediaplayersecurity.entity.UserCredentials;
import com.cg.mediaplayersecurity.serviceimpl.AuthServiceImpl;

@RestController
@RequestMapping("/auth")
@CrossOrigin("*")
public class AuthController {
	
	@Autowired
	private AuthServiceImpl authService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@PostMapping("/register")
	public String addUsers(@RequestBody UserCredentials users)
	{
		return authService.addUser(users);
		
	}
	
	@PostMapping("/token")
	public String getToken(@RequestBody AuthRequest authRequest)
	{
		Authentication authenticate = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authRequest.getName(), authRequest.getPassword()));
		if(authenticate.isAuthenticated())
		{
			return authService.generateToken(authRequest.getName());
		}
		else
		{
			return "Invalid username and password";
		}
		
	}
	@GetMapping("/validate")
	public String validateToken(@RequestParam("token") String token)
	{
		authService.validateToken(token);
		return "token is validated";
	}

}
