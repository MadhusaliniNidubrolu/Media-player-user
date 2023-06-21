package com.cg.mediaplayer.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cg.mediaplayer.entites.Media;
import com.cg.mediaplayer.service.MediaService;

@RestController
@RequestMapping("/media")
@CrossOrigin("*")
public class MediaController {
	@Autowired
    private MediaService mediaService;
	
	
	@PostMapping("/like/{videoId}")
	public void addLikeByVideoId(@PathVariable int videoId) {
        Media media = new Media();
        media.setVideoId(videoId);
        mediaService.addLike(media, videoId);
    }
    @GetMapping("/like/{id}")
    public int getTotalLikes(@PathVariable("id") int videoId) {
        int likesCount = mediaService.getTotalLikes(videoId);
        
        return likesCount;
    }
    @GetMapping("/dislike/{id}")
    public int getTotalDislikes(@PathVariable("id") int videoId) {
        int dislikesCount = mediaService.getTotalDislikes(videoId);
        
        return dislikesCount;
    }
	
    
    @PostMapping("/dislike/{videoId}")
    public void addDislike(@PathVariable int videoId) {
    	Media media=new Media();
    	 media.setVideoId(videoId);
        mediaService.addDislike(media,videoId);
    }

@DeleteMapping("/{id}/like")
public void removeLike(@PathVariable("id") int videoId) {
    mediaService.removeLike(videoId);
}
@DeleteMapping("/{id}/dislike")
public void removeDislike(@PathVariable("id") int videoId) {
    mediaService.removeDislike(videoId);
}
}

