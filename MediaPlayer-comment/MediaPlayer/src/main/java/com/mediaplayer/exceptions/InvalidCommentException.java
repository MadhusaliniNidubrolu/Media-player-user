package com.mediaplayer.exceptions;



import java.time.LocalDateTime;

import org.springframework.web.bind.annotation.ResponseStatus;

import lombok.Data;

public class InvalidCommentException extends RuntimeException {
	private final int status;
    private final String message;
    private final LocalDateTime timestamp;

    public InvalidCommentException(int status, String message) {
        this.status = status;
        this.message = message;
        this.timestamp = LocalDateTime.now();
    }

	public int getStatus() {
		return status;
	}

	public String getMessage() {
		return message;
	}

	public LocalDateTime getTimestamp() {
		return timestamp;
	}

	
    

}
