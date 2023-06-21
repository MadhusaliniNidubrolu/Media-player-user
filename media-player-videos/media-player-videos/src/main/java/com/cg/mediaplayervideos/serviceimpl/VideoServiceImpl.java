package com.cg.mediaplayervideos.serviceimpl;

import java.io.ByteArrayOutputStream;
import java.io.File;




import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.util.Base64;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.hibernate.validator.internal.constraintvalidators.bv.time.futureorpresent.FutureOrPresentValidatorForLocalDate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.cg.mediaplayervideos.entites.Comment;
import com.cg.mediaplayervideos.entites.Description;
import com.cg.mediaplayervideos.entites.Media;
import com.cg.mediaplayervideos.entites.Videos;
import com.cg.mediaplayervideos.exception.VideoNotFoundException;
import com.cg.mediaplayervideos.repository.VideoRepository;
import com.cg.mediaplayervideos.service.VideoService;


import jakarta.transaction.Transactional;
import net.bramp.ffmpeg.FFprobe;
import net.bramp.ffmpeg.probe.FFmpegProbeResult;
import net.bramp.ffmpeg.probe.FFmpegStream;

@Service
public class VideoServiceImpl implements VideoService {
	
	@Autowired
	private VideoRepository videoRepository;
	
	@Autowired
	private RestTemplate restTemplate;
	
	private Logger logger = LoggerFactory.getLogger(Videos.class);

	

	@Override
	@Transactional

	public Videos uploadVideos(MultipartFile file, String videoName, int userId, String category) throws IOException {
	    String directoryPath = "C:\\Users\\akhilash\\Desktop\\videos\\";
	    String fileName = file.getOriginalFilename();
	    String filePath = directoryPath + fileName;
	    
	    try {
	        File directory = new File(directoryPath);
	        if (!directory.exists()) {
	            directory.mkdirs(); // Create the directory if it doesn't exist
	        }

	        file.transferTo(new File(filePath));
	    } catch (IllegalStateException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }

	    Videos video = new Videos();
	    video.setVideoName(videoName);
	    video.setDate(LocalDate.now());
	    video.setUserId(userId);
	    video.setVideoUrl(filePath);
	    video.setCategory(category);
	    video.setViewCount(getViewCount(video.getVideoId()));
	    
	    return videoRepository.save(video);
	}



	@Override
	public long getViewCount(int videoId) {
		Videos video = videoRepository.findById(videoId).orElse(null);
        if (video != null) {
            return video.getViewCount();
        }
		
		return 0;
	}

	

	@Override
	public void incrementViewCount(int videoId) {
	    Optional<Videos> videoOptional = videoRepository.findById(videoId);
	    videoOptional.ifPresent(video -> {
	        video.setViewCount(video.getViewCount() + 1);
	        videoRepository.save(video);
	    });
	}

	@Override
	public String deleteVideos() {
		videoRepository.deleteAll();
		return "All videos are deleted";
	}

	@Override
	public String deleteVideoByUserId(int userId) {
		
		videoRepository.deleteById(userId);
		return "video is deleted by user who's userId is "+userId;
	}

	@Override
	public List<Videos> getAllVideos() {
		logger.debug("this is  a debuging message");
		List<Videos> videosList = videoRepository.findAll();
		
		for(Videos v : videosList)
		{
		String filePath = v.getVideoUrl();
		try {
			byte[] readAllBytes = Files.readAllBytes(new File(filePath).toPath());
			v.setVideoUrl(filePath);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
			 try {
				 Description desc = restTemplate.getForObject("http://localhost:8084/description/getvideo/"+v.getVideoId(), Description.class);
				 v.setDescription(desc);
					 }catch(RestClientException e)
					 {
						 v.setDescription(new Description());
					 }
					 try
					 {
				 List<Comment> comment = restTemplate.getForObject("http://localhost:8085/comment/video/"+v.getVideoId(),List.class);
				 v.setComment(comment);
					 }
					 catch(RestClientException e)
					 {
						 v.setComment(Collections.emptyList());
					 }
				  int likes=0;
				  try {
				  likes = restTemplate.getForObject("http://localhost:8086/media/like/"+v.getVideoId(), Integer.class);
				  v.setLikes(likes);
				  }catch(RestClientException e)
				  {
					  v.setLikes(0);
				  }
				  int dislikes=0;
				  try
				  {
				  dislikes = restTemplate.getForObject("http://localhost:8086/media/dislike/"+v.getVideoId(), Integer.class);
				  v.setDislikes(dislikes);
				  }
				  catch(RestClientException e)
				  {
					  v.setDislikes(0);
				  }
				 
				 
				
				
		}
		
	        
		return videosList;
	}

	@Override
	public List<Videos> getVideosById(int userId) {
		 List<Videos> video = videoRepository.findByUserId(userId);
		 for(Videos v : video)
		 {
			 try {
		 Description desc = restTemplate.getForObject("http://localhost:8084/description/getvideo/"+v.getVideoId(), Description.class);
		 v.setDescription(desc);
			 }catch(RestClientException e)
			 {
				 v.setDescription(new Description());
			 }
			 try
			 {
		 List<Comment> comment = restTemplate.getForObject("http://localhost:8085/comment/video/"+v.getVideoId(),List.class);
		 v.setComment(comment);
			 }
			 catch(RestClientException e)
			 {
				 v.setComment(Collections.emptyList());
			 }
		  int likes=0;
		  try {
		  likes = restTemplate.getForObject("http://localhost:8086/media/like/"+v.getVideoId(), Integer.class);
		  v.setLikes(likes);
		  }catch(RestClientException e)
		  {
			  v.setLikes(0);
		  }
		  int dislikes=0;
		  try
		  {
		  dislikes = restTemplate.getForObject("http://localhost:8086/media/dislike/"+v.getVideoId(), Integer.class);
		  v.setDislikes(dislikes);
		  }
		  catch(RestClientException e)
		  {
			  v.setDislikes(0);
		  }
		 
		 
		
		
		 }
		 return video;
	}

	@Override
	public List<Videos> searchByCategory(String category) {
		// TODO Auto-generated method stub
		return videoRepository.findByCategory(category);
	}

	@Override
	public Videos getVideoByVideoId(int videoId) {
		return videoRepository.findById(videoId).get();
		
	}
	
	@Override
    public Videos getVideoByVideoName(String videoName) {
        return videoRepository.findByVideoName(videoName).orElseThrow(() -> new VideoNotFoundException("Video not found with name: " + videoName));
    }



	@Override
	public byte[] downloadVideo(int videoId) throws IOException {
		Optional<Videos> video = videoRepository.findById(videoId);
		 if (video.isEmpty()) {
		        throw new VideoNotFoundException("Video not found with ID: " + videoId);
		    }
		String videoUrl = video.get().getVideoUrl();
		byte[] readAllBytes = Files.readAllBytes(new File(videoUrl).toPath());
		return readAllBytes;
	}



	
	@Override
	public byte[] downloadVideoByUserId(int userId) throws IOException {
	    List<Videos> videos = videoRepository.findByUserId(userId);
	    if (videos.isEmpty()) {
	         return new byte[0];
	    }
	    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	    for (Videos video : videos) {
	        String videoUrl = video.getVideoUrl();
	        byte[] videoBytes = Files.readAllBytes(new File(videoUrl).toPath());
	        outputStream.write(videoBytes);
	    }
	    return outputStream.toByteArray();
	}



	
	
	

}
