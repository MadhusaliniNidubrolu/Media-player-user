package com.cg.mediaplayervideos;



import com.cg.mediaplayervideos.controller.VideoController;
import com.cg.mediaplayervideos.entites.Videos;
import com.cg.mediaplayervideos.service.VideoService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

class VideoControllerTest {

    @Mock
    private VideoService videoService;

    @InjectMocks
    private VideoController videoController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testUploadVideos() throws IOException {
        MultipartFile file = new MockMultipartFile("file", "test.mp4", MediaType.MULTIPART_FORM_DATA_VALUE, "test data".getBytes());
        int userId = 1;
        String videoName = "Test Video";
        String category = "Test Category";

        Videos video = new Videos();
        video.setUserId(userId);
        video.setVideoName(videoName);
        video.setCategory(category);

        when(videoService.uploadVideos(any(MultipartFile.class), eq(videoName), eq(userId), eq(category))).thenReturn(video);

        Videos result = videoController.uploadVideos(file, videoName, userId, category);

        assertNotNull(result);
        assertEquals(userId, result.getUserId());
        assertEquals(videoName, result.getVideoName());
        assertEquals(category, result.getCategory());
        verify(videoService).uploadVideos(any(MultipartFile.class), eq(videoName), eq(userId), eq(category));
    }

    @Test
    void testGetViewCount() {
        int videoId = 1;
        long viewCount = 100;

        when(videoService.getViewCount(videoId)).thenReturn(viewCount);

        long result = videoController.getViewCount(videoId);

        assertEquals(viewCount, result);
        verify(videoService).getViewCount(videoId);
    }

    @Test
    void testIncrementVideoCount() {
        int videoId = 1;

        videoController.incrementVideoCount(videoId);

        verify(videoService).incrementViewCount(videoId);
    }

    @Test
    void testGetAllVideos() {
        List<Videos> videos = Arrays.asList(new Videos(), new Videos());

        when(videoService.getAllVideos()).thenReturn(videos);

        List<Videos> result = videoController.getAllVideos();

        assertEquals(videos.size(), result.size());
        verify(videoService).getAllVideos();
    }

    @Test
    void testGetVideoById() {
        int userId = 1;
        List<Videos> videos = Arrays.asList(new Videos(), new Videos());

        when(videoService.getVideosById(userId)).thenReturn(videos);

        List<Videos> result = videoController.getVideoById(userId);

        assertEquals(videos.size(), result.size());
        verify(videoService).getVideosById(userId);
    }

    @Test
    void testFindByCategory() {
        String category = "Test Category";
        List<Videos> videos = Arrays.asList(new Videos(), new Videos());

        when(videoService.searchByCategory(category)).thenReturn(videos);

        List<Videos> result = videoController.findByCategory(category);

        assertEquals(videos.size(), result.size());
        verify(videoService).searchByCategory(category);
    }

    @Test
    void testDeleteAllVideos() {
        String expectedMessage = "All videos are deleted";

        String result = videoController.deleteAllVideos();

        assertEquals(expectedMessage, result);
        verify(videoService).deleteVideos();
    }

    @Test
    void testDeleteById() {
        int userId = 1;
        String expectedMessage = "Video deleted successfully";

        String result = videoController.deleteById(userId);

        assertEquals(expectedMessage, result);
        verify(videoService).deleteVideoByUserId(userId);
    }

    @Test
    void testGetVideoByName() {
        String videoName = "Test Video";
        Videos video = new Videos();

        when(videoService.getVideoByVideoName(videoName)).thenReturn(video);

        Videos result = videoController.getVideoByName(videoName);

        assertNotNull(result);
        verify(videoService).getVideoByVideoName(videoName);
    }

    @Test
    void testDownloadVideo() throws IOException {
        int videoId = 1;
        byte[] videoBytes = "Test Video Bytes".getBytes();

        when(videoService.downloadVideo(videoId)).thenReturn(videoBytes);

        ResponseEntity<?> responseEntity = videoController.downloadVideo(videoId);

        assertNotNull(responseEntity);
        assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
        assertEquals(MediaType.valueOf("video/mp4"), responseEntity.getHeaders().getContentType());
        assertArrayEquals(videoBytes, (byte[]) responseEntity.getBody());
        verify(videoService).downloadVideo(videoId);
    }

    @Test
    void testDownloadVideos() throws IOException {
        int userId = 1;
        byte[] videoBytes = "Test Video Bytes".getBytes();

        when(videoService.downloadVideoByUserId(userId)).thenReturn(videoBytes);

        ResponseEntity<?> responseEntity = videoController.downloadVideos(userId);

        assertNotNull(responseEntity);
        assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
        assertEquals(MediaType.valueOf("video/mp4"), responseEntity.getHeaders().getContentType());
        assertArrayEquals(videoBytes, (byte[]) responseEntity.getBody());
        verify(videoService).downloadVideoByUserId(userId);
    }
}
