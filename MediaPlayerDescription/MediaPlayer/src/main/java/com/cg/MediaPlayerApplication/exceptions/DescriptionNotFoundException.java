package com.cg.MediaPlayerApplication.exceptions;

import java.time.LocalDateTime;

public class DescriptionNotFoundException extends RuntimeException {
	private final int status;
    private final String message;
    private final LocalDateTime timestamp;

    public DescriptionNotFoundException(int status, String message) {
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
