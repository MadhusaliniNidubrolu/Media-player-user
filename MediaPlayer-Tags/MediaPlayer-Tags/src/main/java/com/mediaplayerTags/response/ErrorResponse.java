package com.mediaplayerTags.response;

import java.util.List;

public class ErrorResponse {
	private String title;
    private String errorMessages;

    public ErrorResponse(String title, String errorMessage) {
        this.title = title;
        this.errorMessages = errorMessage;
    }

	public String getTitle() {
		return title;
	}

	public String getErrorMessages() {
		return errorMessages;
	}
    

}
