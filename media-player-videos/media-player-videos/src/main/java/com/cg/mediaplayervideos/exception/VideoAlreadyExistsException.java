package com.cg.mediaplayervideos.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(value = HttpStatus.CONFLICT)
public class VideoAlreadyExistsException extends RuntimeException {
	public VideoAlreadyExistsException() {
		
	}
	public VideoAlreadyExistsException(String msg) {
		super(msg);
	}
}