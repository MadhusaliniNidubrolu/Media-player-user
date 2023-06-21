package com.mediaplayer.service;

import java.util.List;

import com.mediaplayer.entity.Comment;
import com.mediaplayer.exceptions.InvalidCommentException;

public interface CommentService {

	List<Comment> allComments(int videoId);

	String deleteComment(int commentId);

	Comment addnewComment(Comment c, int userId, int videoId) ;
	
	List<Comment> getByUserId(int userId);

}
