package com.cg.mediaplayer;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.cg.mediaplayer.entites.Media;
import com.cg.mediaplayer.exception.IdNotFoundException;
import com.cg.mediaplayer.repository.MediaRepository;
import com.cg.mediaplayer.serviceimpl.MediaServiceImpl;

public class MediaPlayerApplicationTests {

    @Mock
    private MediaRepository mediaRepository;

    @InjectMocks
    private MediaServiceImpl mediaService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testAddLike() {
        Media media = new Media();
        media.setLikes(10);
        int videoId = 1;

        List<Media> mediaList = new ArrayList<>();
        mediaList.add(media);

        when(mediaRepository.findByVideoId(videoId)).thenReturn(mediaList);

        mediaService.addLike(media, videoId);

        assertEquals(11, media.getLikes());
        verify(mediaRepository, times(1)).save(media);
    }

    @Test
    public void testAddDislike() {
        Media media = new Media();
        media.setDislikes(5);
        int videoId = 1;

        List<Media> mediaList = new ArrayList<>();
        mediaList.add(media);

        when(mediaRepository.findByVideoId(videoId)).thenReturn(mediaList);

        mediaService.addDislike(media, videoId);

        assertEquals(6, media.getDislikes());
        verify(mediaRepository, times(1)).save(media);
    }

    @Test
    public void testGetTotalLikes() {
        Media media1 = new Media();
        media1.setLikes(5);
        Media media2 = new Media();
        media2.setLikes(3);
        int videoId = 1;

        List<Media> mediaList = new ArrayList<>();
        mediaList.add(media1);
        mediaList.add(media2);

        when(mediaRepository.findByVideoId(videoId)).thenReturn(mediaList);

        int totalLikes = mediaService.getTotalLikes(videoId);

        assertEquals(8, totalLikes);
    }

    @Test
    public void testGetTotalLikesWithIdNotFoundException() {
        int videoId = 1;
        List<Media> emptyMediaList = new ArrayList<>();

        when(mediaRepository.findByVideoId(videoId)).thenReturn(emptyMediaList);

        assertThrows(IdNotFoundException.class, () -> mediaService.getTotalLikes(videoId));
    }

    @Test
    public void testGetTotalDislikes() {
        Media media1 = new Media();
        media1.setDislikes(4);
        Media media2 = new Media();
        media2.setDislikes(2);
        int videoId = 1;

        List<Media> mediaList = new ArrayList<>();
        mediaList.add(media1);
        mediaList.add(media2);

        when(mediaRepository.findByVideoId(videoId)).thenReturn(mediaList);

        int totalDislikes = mediaService.getTotalDislikes(videoId);

        assertEquals(6, totalDislikes);
    }

    @Test
    public void testGetTotalDislikesWithIdNotFoundException() {
        int videoId = 1;
        List<Media> emptyMediaList = new ArrayList<>();

        when(mediaRepository.findByVideoId(videoId)).thenReturn(emptyMediaList);

        assertThrows(IdNotFoundException.class, () -> mediaService.getTotalDislikes(videoId));
    }

    @Test
    public void testRemoveLike() {
        Media media = new Media();
        media.setLikes(5);
        int videoId = 1;

        List<Media> mediaList = new ArrayList<>();
        mediaList.add(media);

        when(mediaRepository.findByVideoId(videoId)).thenReturn(mediaList);

        mediaService.removeLike(videoId);

        assertEquals(4, media.getLikes());
        verify(mediaRepository, times(1)).save(media);
    }

    @Test
    public void testRemoveDislike() {
        Media media = new Media();
        media.setDislikes(3);
        int videoId = 1;

        List<Media> mediaList = new ArrayList<>();
        mediaList.add(media);

        when(mediaRepository.findByVideoId(videoId)).thenReturn(mediaList);

        mediaService.removeDislike(videoId);

        assertEquals(2, media.getDislikes());
        verify(mediaRepository, times(1)).save(media);
    }
}
