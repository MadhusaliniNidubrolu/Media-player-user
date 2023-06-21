package com.mediaplayer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mediaplayer.entity.Comment;

import jakarta.transaction.Transactional;



@Repository
public interface CommentRepository extends JpaRepository<Comment,Integer> {
	@Query(value = "select * from Comment where video_id= :v", nativeQuery = true)
	List<Comment> allComments(@Param("v") int VideoId);
	@Query(value = "delete from Comment c where c.comment_id= :i", nativeQuery = true)
	@Modifying
	@Transactional
	int deleteComment(@Param("i") int commentId);
	
	List<Comment> findByUserId(int userId);
	
}
