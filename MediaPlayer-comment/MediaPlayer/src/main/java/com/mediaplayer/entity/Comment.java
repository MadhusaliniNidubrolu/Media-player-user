package com.mediaplayer.entity;

import java.time.LocalDate;
import java.time.LocalTime;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity


@NoArgsConstructor

public class Comment {
	
	@Id
	@GeneratedValue
	private int commentId;
	private String message;
	private int userId;
	private int videoId;
	@JsonFormat(pattern = "dd-MM-YYYY")
	private LocalDate date;
	@JsonFormat(pattern = "hh:mm:ss")
	private LocalTime time;
	
	@Transient
	private Users users;
	
	
	
	
public Comment(int commentId, String message, LocalTime time, LocalDate date) {
		this.commentId=commentId;
		this.date=date;
		this.time=time;
		this.message=message;
	}


public int getCommentId() {
	return commentId;
}


public void setCommentId(int commentId) {
	this.commentId = commentId;
}


public String getMessage() {
	return message;
}


public void setMessage(String message) {
	this.message = message;
}


public int getUserId() {
	return userId;
}


public void setUserId(int userId) {
	this.userId = userId;
}


public int getVideoId() {
	return videoId;
}


public void setVideoId(int videoId) {
	this.videoId = videoId;
}


public LocalDate getDate() {
	return date;
}


public void setDate(LocalDate date) {
	this.date = date;
}


public LocalTime getTime() {
	return time;
}


public void setTime(LocalTime time) {
	this.time = time;
}


public Users getUsers() {
	return users;
}


public void setUsers(Users users) {
	this.users = users;
}




	
	

}
