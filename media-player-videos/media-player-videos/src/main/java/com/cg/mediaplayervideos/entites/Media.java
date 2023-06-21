package com.cg.mediaplayervideos.entites;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Media {
	
private int mediaId;
	
    private int videoId;
    
   
    private int likes;
    private int dislikes;

}
