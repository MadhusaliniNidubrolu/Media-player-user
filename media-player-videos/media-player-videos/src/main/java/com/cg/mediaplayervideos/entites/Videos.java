package com.cg.mediaplayervideos.entites;

import java.time.Duration;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Videos {
	
	@Id
	@GeneratedValue
	private int videoId;
	
	private String videoName;
	
	private LocalDate date;
	
	private int userId;

	private String videoUrl;
	
	private String category;
	@Lob
	private long viewCount;
	
	@Transient
	private Description description;
	
	@Transient
	private List<Comment> comment;
	
	
	@Transient
	private int Likes;
	
	@Transient
	private int Dislikes;
	
	
	

}
