package com.cg.mediaplayersecurity.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cg.mediaplayersecurity.entity.UserCredentials;

public interface UserCredentialsRepository extends JpaRepository<UserCredentials, Integer> {

	Optional<UserCredentials> findByName(String name);
}
