package com.cg.MediaPlayerApplication.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cg.MediaPlayerApplication.entity.Description;
@Repository
public interface DescriptionRepo extends JpaRepository<Description,Integer>{
	public List<Description>findBytitle(String title);
	public List<Description>findBylanguage(String language);
	public Description findByVideoId(int videoId);
}