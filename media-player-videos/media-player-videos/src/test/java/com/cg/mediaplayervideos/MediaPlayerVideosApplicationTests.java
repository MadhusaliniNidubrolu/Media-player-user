package com.cg.mediaplayervideos;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import static org.mockito.Mockito.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.client.RestTemplate;

import com.cg.mediaplayervideos.entites.Description;
import com.cg.mediaplayervideos.entites.Videos;
import com.cg.mediaplayervideos.exception.VideoNotFoundException;
import com.cg.mediaplayervideos.repository.VideoRepository;
import com.cg.mediaplayervideos.serviceimpl.VideoServiceImpl;

@SpringBootTest
class MediaPlayerVideosApplicationTests {

	@Mock
	private VideoRepository videoRepository;

	@Mock
	private RestTemplate restTemplate;

	@InjectMocks
	private VideoServiceImpl videoServiceImpl;

	@Test
	void testGetViewCountWithVideoId() {
	    int videoId = 1;
	    long expectedViewCount = 100;

	    Videos video = new Videos();
	    video.setVideoId(videoId);
	    video.setViewCount(expectedViewCount);

	    when(videoRepository.findById(videoId)).thenReturn(Optional.of(video));

	    long viewCount = videoServiceImpl.getViewCount(videoId);

	    assertEquals(expectedViewCount, viewCount);
	    verify(videoRepository, times(1)).findById(videoId);
	}

//	@Test
//	void testGetViewCountWithoutVideoId() throws VideoNotFoundException {
//	    int videoId = 1;
//
//	    when(videoRepository.findById(videoId)).thenReturn(Optional.empty());
//	    VideoNotFoundException exception = assertThrows(VideoNotFoundException.class, () -> {
//	        videoServiceImpl.getViewCount(videoId);
//	    });	    
//	    assertEquals("Video Not Found", exception.getMessage());
//	    verify(videoRepository, times(1)).findById(videoId);
//	}

	@Test
	void testIncrementViewCount() {
	    int videoId = 1;
	    long initialViewCount = 100;

	    Videos video = new Videos();
	    video.setVideoId(videoId);
	    video.setViewCount(initialViewCount);

	    when(videoRepository.findById(videoId)).thenReturn(java.util.Optional.of(video));
	    when(videoRepository.save(any(Videos.class))).thenReturn(video);

	    videoServiceImpl.incrementViewCount(videoId);

	    assertEquals(initialViewCount + 1, video.getViewCount());
	    verify(videoRepository, times(1)).findById(videoId);
	    verify(videoRepository, times(1)).save(any(Videos.class));
	}

	@Test
	void testIncrementViewCountNoVideo() {
	    int videoId = 1;
	    when(videoRepository.findById(videoId)).thenReturn(Optional.empty());

	    videoServiceImpl.incrementViewCount(videoId);

	    verify(videoRepository, times(1)).findById(videoId);
	    verify(videoRepository, never()).save(any(Videos.class));
	}

	@Test
	void testDeleteVideos() {
	    doNothing().when(videoRepository).deleteAll();

	    String result = videoServiceImpl.deleteVideos();

	    assertEquals("All videos are deleted", result);
	    verify(videoRepository, times(1)).deleteAll();
	}

	@Test
	void testDeleteVideoByUserId() {
	    int userId = 1;
	    doNothing().when(videoRepository).deleteById(userId);
	    String result = videoServiceImpl.deleteVideoByUserId(userId);
	    
	    assertEquals("video is deleted by user who's userId is " + userId, result);
	    verify(videoRepository, times(1)).deleteById(userId);
	}

	@Test
	void testGetVideosById() {
	    int userId = 1;
	    List<Videos> videosList = new ArrayList<>();
	    Videos video1 = new Videos();
	    video1.setVideoId(1);
	    videosList.add(video1);

	    when(videoRepository.findByUserId(userId)).thenReturn(videosList);
	    when(restTemplate.getForObject(anyString(), eq(Description.class))).thenReturn(new Description());
	    when(restTemplate.getForObject(anyString(), eq(List.class))).thenReturn(new ArrayList<>());
	    when(restTemplate.getForObject(anyString(), eq(Integer.class))).thenReturn(0);

	    List<Videos> result = videoServiceImpl.getVideosById(userId);

	    assertEquals(videosList, result);
	    assertEquals(result.get(0).getDescription(), videosList.get(0).getDescription());
	    assertEquals(Collections.emptyList(), videosList.get(0).getComment());
	    assertEquals(0, videosList.get(0).getLikes());
	    verify(videoRepository, times(1)).findByUserId(userId);
	    verify(restTemplate, times(1)).getForObject(anyString(), eq(Description.class));
	    verify(restTemplate, times(1)).getForObject(anyString(), eq(List.class));
	    verify(restTemplate, times(2)).getForObject(anyString(), eq(Integer.class));
	}

	@Test
	void testSearchByCategory() {
	    String category = "Music";
	    List<Videos> videosList = new ArrayList<>();
	    Videos video1 = new Videos();
	    video1.setVideoId(1);
	    videosList.add(video1);

	    when(videoRepository.findByCategory(category)).thenReturn(videosList);

	    List<Videos> result = videoServiceImpl.searchByCategory(category);

	    assertEquals(videosList, result);
	    verify(videoRepository, times(1)).findByCategory(category);
	}

	@Test
	void testGetVideoByVideoId() {
	    int videoId = 1;
	    Videos video = new Videos();
	    video.setVideoId(videoId);

	    when(videoRepository.findById(videoId)).thenReturn(java.util.Optional.of(video));

	    Videos result = videoServiceImpl.getVideoByVideoId(videoId);

	    assertEquals(video, result);
	    verify(videoRepository, times(1)).findById(videoId);
	}
	
	 @Test
	    void testDownloadVideo_ExistingVideoId_ReturnsVideoBytes() throws IOException {
	        int videoId = 1;
	        Videos video = new Videos();
	        video.setVideoUrl("C:\\\\Users\\\\akhilash\\\\Desktop\\\\videos\\\\Should you still LEARN Java in 2023.mp4");

	        when(videoRepository.findById(videoId)).thenReturn(Optional.of(video));

	        byte[] videoBytes = Files.readAllBytes(new File(video.getVideoUrl()).toPath());

	        byte[] result = videoServiceImpl.downloadVideo(videoId);

	        assertNotNull(result);
	        assertArrayEquals(videoBytes, result);
	        verify(videoRepository).findById(videoId);
	    }

	 @Test
	    void testDownloadVideo_NonExistingVideoId_ThrowsVideoNotFoundException() {
	        int videoId = 1;

	        when(videoRepository.findById(videoId)).thenReturn(Optional.empty());

	        assertThrows(VideoNotFoundException.class, () -> {
	            videoServiceImpl.downloadVideo(videoId);
	        });

	        verify(videoRepository).findById(videoId);
	    }

	    @Test
	    void testDownloadVideoByUserId_ExistingUserId_ReturnsVideoBytes() throws IOException {
	        int userId = 1;
	        Videos video1 = new Videos();
	        video1.setVideoUrl("C:\\Users\\akhilash\\Desktop\\videos\\Should you still LEARN Java in 2023.mp4");
	        Videos video2 = new Videos();
	        video2.setVideoUrl("C:\\Users\\akhilash\\Desktop\\videos\\Całkiem nowe przygody Toma i Jerry’ego _ Myszka robot _ Cartoonito.mp4");

	        when(videoRepository.findByUserId(userId)).thenReturn(List.of(video1, video2));

	        byte[] videoBytes1 = Files.readAllBytes(new File(video1.getVideoUrl()).toPath());
	        byte[] videoBytes2 = Files.readAllBytes(new File(video2.getVideoUrl()).toPath());

	        byte[] result = videoServiceImpl.downloadVideoByUserId(userId);

	        assertNotNull(result);
	       // assertArrayEquals(videoBytes1, result);
	       // verify(videoRepository).findByUserId(userId);
	    }
	    @Test
	    void testDownloadVideoByUserId_NonExistingUserId_ReturnsEmptyBytesArray() throws IOException {
	        int userId = 1;

	        when(videoRepository.findByUserId(userId)).thenReturn(List.of());

	        byte[] result = videoServiceImpl.downloadVideoByUserId(userId);

	        assertNotNull(result);
	        assertEquals(0, result.length);
	        verify(videoRepository).findByUserId(userId);
	       // verifyNoMoreInteractions(Files);
	    }
}

