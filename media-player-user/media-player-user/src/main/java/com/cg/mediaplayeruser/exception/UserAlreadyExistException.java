package com.cg.mediaplayeruser.exception;

public class UserAlreadyExistException extends RuntimeException{
	public UserAlreadyExistException() {
	}
	
	public UserAlreadyExistException(String msg) {
		super(msg);
	}

}
