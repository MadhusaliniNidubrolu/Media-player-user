package com.cg.mediaplayeruser.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cg.mediaplayeruser.entites.Users;

@Repository
public interface UserRepositroy extends JpaRepository<Users, Integer> {
	
	 boolean existsByEmail(String email); 

}
