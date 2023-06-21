package com.mediaplayer.service;

import java.time.LocalDate;

import java.time.LocalTime;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.mediaplayer.entity.Comment;
import com.mediaplayer.entity.Users;

import com.mediaplayer.exceptions.InvalidCommentException;
import com.mediaplayer.repository.CommentRepository;

import jakarta.transaction.Transactional;
@Service
public class CommentServiceImpl implements CommentService{
	
	
	@Autowired
	 private CommentRepository commentRepo;
	
	@Autowired
	private RestTemplate restTemplate;
	

	private Logger logger = LoggerFactory.getLogger(Users.class);
	


	public CommentServiceImpl(CommentRepository commentRepo) {
		this.commentRepo = commentRepo;
	}


	public Comment addnewComment(Comment c, int userId, int videoId) throws InvalidCommentException {
		if(c.getMessage()==null ){
		
		throw new InvalidCommentException(400," share your words");
		}
		c.setDate(LocalDate.now());
		c.setTime(LocalTime.now());
		c.setUserId(userId);
		c.setVideoId(videoId);
		Comment comment=commentRepo.save(c);
		return comment;
	}
	
	
	public List<Comment> allComments(int videoId) throws InvalidCommentException{
		
		List<Comment> allComments = commentRepo.allComments(videoId);
		
		
		
			if(allComments.isEmpty()) {
				throw new InvalidCommentException(400,"no comments");
			}
	        return allComments;
		}
		

	
	@Transactional
    public String deleteComment(int commentId) throws InvalidCommentException {
		
		logger.info("deleting using commentId");
		int c= commentRepo.deleteComment(commentId);
		
		if(c==0) {
	    	 
			throw new InvalidCommentException(400,"delete comment is failed");
		}
    	 return "deleted successfully";
    }


	@Override
	public List<Comment> getByUserId(int userId) {
		List<Comment> users = commentRepo.findByUserId(userId);
		logger.info("{}", users);
		for(Comment comment : users)
		{
		Users u = restTemplate.getForObject("http://localhost:8081/users/get/"+comment.getUserId(), Users.class);
		comment.setUsers(u);
		}
		return users;
		
	}

		
	}
		
	
	







	

	
