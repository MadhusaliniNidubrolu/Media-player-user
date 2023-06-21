package com.cg.mediaplayer.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cg.mediaplayer.entites.Media;
import com.cg.mediaplayer.exception.IdNotFoundException;
import com.cg.mediaplayer.repository.MediaRepository;
import com.cg.mediaplayer.service.MediaService;

@Service
@Transactional
public class MediaServiceImpl implements MediaService{
	@Autowired
    private  MediaRepository mediaRepository;
	@Override
	@Transactional
	public void addLike(Media media, int videoId) {
	    List<Media> mediaList = mediaRepository.findByVideoId(videoId);
	            media.setLikes(media.getLikes() + 1);
	            mediaRepository.save(media);
	        
	    }
	
	@Override
	@Transactional
	public void addDislike(Media media,int videoId) {
		List<Media> mediaList = mediaRepository.findByVideoId(videoId);
	        media.setDislikes(media.getDislikes() + 1);
	        mediaRepository.save(media);
		
	}

	@Override
	public int getTotalLikes(int videoId) {
	    List<Media> mediaList = mediaRepository.findByVideoId(videoId);
	    if (mediaList.isEmpty()) {
	        throw new IdNotFoundException("video Id not found");
	    }
	    int totalLikes = 0;
	    for (Media media : mediaList) {
	        totalLikes += media.getLikes();
	    }
	    return totalLikes;
	}


	  @Override
	    public int getTotalDislikes(int videoId) {
	        List<Media> mediaList = mediaRepository.findByVideoId(videoId);
	        if (mediaList.isEmpty()) {
	            throw new IdNotFoundException("Video Id not found");
	        }
	        int totalDislikes = 0;
	        for (Media media : mediaList) {
	            totalDislikes += media.getDislikes();
	        }
	        return totalDislikes;
	    }

	  public void removeLike(int videoId) {
	        List<Media> mediaList = mediaRepository.findByVideoId(videoId);
	        if (mediaList.isEmpty()) {
	            throw new IdNotFoundException("Video Id not found");
	        }
	        for (Media media : mediaList) {
	            if (media.getLikes() > 0) {
	                media.setLikes(media.getLikes() - 1);
	                mediaRepository.save(media);
	                break;
	            }
	        }
	    }

	  @Override
	    public void removeDislike(int videoId) {
	        List<Media> mediaList = mediaRepository.findByVideoId(videoId);
	        if (mediaList.isEmpty()) {
	            throw new IdNotFoundException("Video Id not found");
	        }
	        for (Media media : mediaList) {
	            if (media.getDislikes() > 0) {
	                media.setDislikes(media.getDislikes() - 1);
	                mediaRepository.save(media);
	                break;
	            }
	        }
	    }

	


}
