package com.cg.mediaplayervideos.entites;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Description {
	
	private int desId;
	private String title;
	private String language;
	private String description;
	private int videoId;
	
	List<Tag> tags;

}
