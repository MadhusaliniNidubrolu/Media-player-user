package com.mediaplayerTags.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Tag {
	public Tag(String string) {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue
	private int tagId;
	private String name;
	private int desId;
	
	
	
	

}
