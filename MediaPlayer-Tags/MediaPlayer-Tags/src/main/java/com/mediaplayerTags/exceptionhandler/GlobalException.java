package com.mediaplayerTags.exceptionhandler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.mediaplayerTags.exceptions.DuplicateTagException;

import com.mediaplayerTags.exceptions.TagNotFoundException;
import com.mediaplayerTags.response.ErrorResponse;

public class GlobalException {
  
	@ExceptionHandler(TagNotFoundException.class)
	public ResponseEntity<ErrorResponse> handleTagNotFoundException(TagNotFoundException ex) {
	    // Create an error message with details of the exception
	    String errorMessage = ex.getMessage();

	    // Create the ErrorResponse object with the error message
	    ErrorResponse errorResponse = new ErrorResponse("Tag Not Found", errorMessage);

	    // Return the ErrorResponse object with a 404 Not Found status code
	    return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
	}

	@ExceptionHandler(DuplicateTagException .class)
	public ResponseEntity<ErrorResponse> handleDuplicateTagException(DuplicateTagException ex) {
	    // Create an error message with details of the exception
	    String errorMessage = ex.getMessage();

	    // Create the ErrorResponse object with the error message
	    ErrorResponse errorResponse = new ErrorResponse("Duplicate Tag", errorMessage);

	    // Return the ErrorResponse object with a 409 Conflict status code
	    return ResponseEntity.status(HttpStatus.CONFLICT).body(errorResponse);
	}
	

}

