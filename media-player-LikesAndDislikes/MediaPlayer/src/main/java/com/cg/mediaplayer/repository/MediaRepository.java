package com.cg.mediaplayer.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cg.mediaplayer.entites.Media;
@Repository

public interface MediaRepository extends JpaRepository<Media, Long> {
	
	List<Media> findByVideoId(int videoId);
}
