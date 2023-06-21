package com.cg.mediaplayervideos.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cg.mediaplayervideos.entites.Videos;

@Repository
public interface VideoRepository extends JpaRepository<Videos, Integer> {
	
	public List<Videos> findByCategory(String category) ;
	
	public List<Videos> findByUserId(int userId);

	public Optional<Videos> findByVideoName(String videoName);
	
	public Optional<Videos> findVideoByUserId(int userId);
	
	

}
