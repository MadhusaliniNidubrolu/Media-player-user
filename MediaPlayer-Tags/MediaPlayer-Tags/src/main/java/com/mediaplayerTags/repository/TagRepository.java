package com.mediaplayerTags.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mediaplayerTags.Entity.Tag;
@Repository
public interface TagRepository extends JpaRepository<Tag,Integer> {
	
	List<Tag> findByDesId(int desId);

}
