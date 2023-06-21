package com.cg.mediaplayervideos.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(value = HttpStatus.CONFLICT)
public class VideoNotFoundException extends RuntimeException {
	public VideoNotFoundException() {
		
	}
	public VideoNotFoundException(String msg) {
		super(msg);
	}
}