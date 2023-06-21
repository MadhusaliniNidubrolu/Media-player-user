package com.cg.mediaplayervideos.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cg.mediaplayervideos.entites.Videos;
import com.cg.mediaplayervideos.service.VideoService;

@RestController
@RequestMapping("/videos")
@CrossOrigin("*")
public class VideoController {
	
	@Autowired
	private VideoService videoService;
	
	@PostMapping("/post/{userId}")
	public Videos uploadVideos(@RequestParam("file") MultipartFile file,@RequestParam String videoName, @PathVariable int userId,@RequestParam String category) throws IOException
	{
		return videoService.uploadVideos(file,videoName,   userId, category);
	}
	
	@GetMapping("/getviewcount/{videoId}")
	public long getViewCount(@PathVariable int videoId)
	{
		return videoService.getViewCount(videoId);
	}
	
	@PostMapping("/viewcount/{videoId}")
	public void incrementVideoCount(@PathVariable int videoId)
	{
		 videoService.incrementViewCount(videoId);
	}
	
	@GetMapping
	public List<Videos> getAllVideos()
	{
		return videoService.getAllVideos();
	}
	
	@GetMapping("/getvideo/{userId}")
	public List<Videos> getVideoById(@PathVariable int userId)
	{
		return videoService.getVideosById(userId);
	}
	
	@GetMapping("/category/{category}")
	public List<Videos> findByCategory(@PathVariable String category)
	{
		return videoService.searchByCategory(category);
	}
	
	@DeleteMapping
	public String deleteAllVideos()
	{
		 return videoService.deleteVideos();
	}
	
	@DeleteMapping("/delete/{userId}")
	public String deleteById(@PathVariable int userId)
	{
		return videoService.deleteVideoByUserId(userId);
	}
	
//	@GetMapping("/{videoId}")
//	public Videos getVideo(@PathVariable int videoId)
//	{
//		return videoService.getVideoByVideoId(videoId);
//	}
//	
	
	@GetMapping("/{videoName:.+}")
	public Videos getVideoByName(@PathVariable String videoName) {
	    return videoService.getVideoByVideoName(videoName);
	}
	
	@GetMapping("/download/{videoId}")
	public ResponseEntity<?> downloadVideo(@PathVariable int videoId) throws IOException {
		 byte[] downloadVideo = videoService.downloadVideo(videoId);
		 
		 return ResponseEntity.status(HttpStatus.OK)
				 .contentType(MediaType.valueOf("video/mp4"))
				 .body(downloadVideo);
				
	}
	
	@GetMapping("/downloaduser/{userId}")
	public ResponseEntity<?> downloadVideos(@PathVariable int userId) throws IOException {
		 byte[] downloadVideo = videoService.downloadVideoByUserId(userId);
		 
		 return ResponseEntity.status(HttpStatus.OK)
				 .contentType(MediaType.valueOf("video/mp4"))
				 .body(downloadVideo);
				
	}

}
