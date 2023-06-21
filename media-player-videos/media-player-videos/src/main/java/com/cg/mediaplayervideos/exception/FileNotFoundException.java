package com.cg.mediaplayervideos.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(value = HttpStatus.CONFLICT)
public class FileNotFoundException extends RuntimeException {
	public FileNotFoundException() {
		
	}
	public FileNotFoundException(String msg) {
		super(msg);
	}
}