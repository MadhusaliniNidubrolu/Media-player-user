package com.cg.mediaplayer.exception;

@SuppressWarnings("serial")
public class IdNotFoundException extends RuntimeException {

    public IdNotFoundException(String message) {
        super(message);
    }

    public IdNotFoundException() {
        
    }
}

