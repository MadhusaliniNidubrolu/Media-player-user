package com.mediaplayer.service;

import static org.junit.Assert.assertEquals;

import static org.junit.Assert.assertNotNull;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;

import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.mediaplayer.entity.Comment;
import com.mediaplayer.entity.Users;
import com.mediaplayer.exceptionHandler.GlobalExceptionHandler;
import com.mediaplayer.exceptions.InvalidCommentException;
import com.mediaplayer.repository.CommentRepository;
import com.mediaplayer.response.ErrorResponse;

@ExtendWith(MockitoExtension.class)
public class CommentServiceTest {

    @Mock
    private CommentRepository commentRepo;

    @Mock
    private RestTemplate restTemplate;

    @InjectMocks
    private CommentServiceImpl commentService;

    @org.junit.Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testAddNewComment() throws InvalidCommentException {
        // Mock input data
        Comment comment = new Comment();
        comment.setMessage("Test comment");
        int userId = 1;
        int videoId = 1;

        // Set expectations
        when(commentRepo.save(comment)).thenReturn(comment);

        // Call the method
        Comment result = commentService.addnewComment(comment, userId, videoId);

        // Verify the interactions
        verify(commentRepo, times(1)).save(comment);

        // Assertions
        assertNotNull(result);
        assertEquals(comment, result);
        assertNotNull(result.getDate());
        assertNotNull(result.getTime());
        assertEquals(userId, result.getUserId());
        assertEquals(videoId, result.getVideoId());
    }

    @Test
    public void testAddNewComment_NullMessage() {
        // Mock input data
        Comment comment = new Comment();
        comment.setMessage(null);
        int userId = 1;
        int videoId = 1;

        // Call the method and assert
        assertThrows(InvalidCommentException.class, () -> commentService.addnewComment(comment, userId, videoId));

        // Verify the interactions
        verify(commentRepo, never()).save(comment);
    }

    @Test
    public void testAllComments() throws InvalidCommentException {
        // Mock input data
        int videoId = 1;
        List<Comment> allComments = new ArrayList<>();
        Comment comment1 = new Comment();
        comment1.setCommentId(1);
        Comment comment2 = new Comment();
        comment2.setCommentId(2);
        allComments.add(comment1);
        allComments.add(comment2);

        // Set expectations
        when(commentRepo.allComments(videoId)).thenReturn(allComments);

        // Call the method
        List<Comment> result = commentService.allComments(videoId);

        // Verify the interactions
        verify(commentRepo, times(1)).allComments(videoId);

        // Assertions
        assertNotNull(result);
        assertEquals(allComments.size(), result.size());
        assertEquals(comment1, result.get(0));
        assertEquals(comment2, result.get(1));
    }

    @Test
    public void testAllComments_EmptyComments() {
        // Mock input data
        int videoId = 1;
        List<Comment> allComments = new ArrayList<>();

        // Set expectations
        when(commentRepo.allComments(videoId)).thenReturn(allComments);

        // Call the method and assert
        assertThrows(InvalidCommentException.class, () -> commentService.allComments(videoId));

        // Verify the interactions
        verify(commentRepo, times(1)).allComments(videoId);
    }

    @Test
    public void testDeleteComment() throws InvalidCommentException {
        // Mock input data
        int commentId = 1;

        // Set expectations
        when(commentRepo.deleteComment(commentId)).thenReturn(1);

        // Call the method
        String result = commentService.deleteComment(commentId);

        // Verify the interactions
        verify(commentRepo, times(1)).deleteComment(commentId);

        // Assertions
        assertNotNull(result);
        assertEquals("deleted successfully", result);
    }

    @Test
    public void testDeleteComment_Failed() {
        // Mock input data
        int commentId = 1;

        // Set expectations
        when(commentRepo.deleteComment(commentId)).thenReturn(0);

        // Call the method and assert
        assertThrows(InvalidCommentException.class, () -> commentService.deleteComment(commentId));

        // Verify the interactions
        verify(commentRepo, times(1)).deleteComment(commentId);
    }
    
    

    
}
