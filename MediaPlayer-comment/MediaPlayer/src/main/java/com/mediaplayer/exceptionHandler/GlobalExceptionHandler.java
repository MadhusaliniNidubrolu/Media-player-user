package com.mediaplayer.exceptionHandler;

import java.time.LocalDateTime;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.mediaplayer.exceptions.InvalidCommentException;
import com.mediaplayer.response.ErrorResponse;




@RestControllerAdvice

public class GlobalExceptionHandler {
		
	@ExceptionHandler(InvalidCommentException.class)
	public ResponseEntity<ErrorResponse> handleInvalidCommentException(InvalidCommentException ex) {
	    ErrorResponse errorResponse = new ErrorResponse(ex.getStatus(), ex.getMessage(), LocalDateTime.now());
	    return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
	}
}

	


