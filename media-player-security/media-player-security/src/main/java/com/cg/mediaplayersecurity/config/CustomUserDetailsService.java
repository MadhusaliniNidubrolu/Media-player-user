package com.cg.mediaplayersecurity.config;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.cg.mediaplayersecurity.entity.UserCredentials;
import com.cg.mediaplayersecurity.repository.UserCredentialsRepository;

@Component
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserCredentialsRepository userCredentialsRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<UserCredentials> credentials = userCredentialsRepository.findByName(username);
		
		return credentials.map(CustomUserDetails::new).orElseThrow(() -> new UsernameNotFoundException("user not found who's name is "+ username));
	}

}
