package com.cg.MediaPlayerApplication.advice;

import java.time.LocalDateTime;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;


import com.cg.MediaPlayerApplication.dto.ErrorResponse;
import com.cg.MediaPlayerApplication.exceptions.DescriptionNotFoundException;
@RestControllerAdvice
public class GlobalExceptionhandler {
	/*@ExceptionHandler
	public  ResponseEntity<ApiError> handle(Exception e) {
		ApiError error= new ApiError();
		error.setError(e.getMessage());
		ResponseEntity<ApiError> resEntity= new ResponseEntity<ApiError>(error, HttpStatus.NOT_FOUND);
		return resEntity;
	}*/
	@ExceptionHandler(DescriptionNotFoundException.class)
	public ResponseEntity<ErrorResponse> handleInvalidCommentException(DescriptionNotFoundException ex) {
	    ErrorResponse errorResponse = new ErrorResponse(ex.getStatus(), ex.getMessage(), LocalDateTime.now());
	    return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
	}

}
