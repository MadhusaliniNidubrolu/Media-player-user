package com.cg.mediaplayer.service;

import com.cg.mediaplayer.entites.Media;

public interface MediaService {


	public void removeLike(int videoId);
	public void removeDislike(int videoId);

	public int getTotalLikes(int videoId);
	 
	public int getTotalDislikes(int videoId);

	void addLike(Media media, int videoId);
	void addDislike(Media media, int videoId);
	
	


	
	
	
}

