package com.cg.mediaplayeruser.entites;

import java.time.Duration;
import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Videos {
	
	
	private int videoId;
	
	private int videoName;
	
	private LocalDate date;
	
	private int userId;
	
	private String category;
	
	private long viewCount;
	
	
	

	
	

}
