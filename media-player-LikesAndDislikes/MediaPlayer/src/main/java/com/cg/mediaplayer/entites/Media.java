package com.cg.mediaplayer.entites;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Media {
    
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int mediaId;
	
    private int videoId;
    
   
    private int likes;
    private int dislikes;
	
	
	}
    
    

