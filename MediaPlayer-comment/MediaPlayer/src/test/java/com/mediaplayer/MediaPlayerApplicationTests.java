package com.mediaplayer;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.client.RestTemplate;

import com.mediaplayer.entity.Comment;
import com.mediaplayer.entity.Users;
import com.mediaplayer.exceptions.InvalidCommentException;
import com.mediaplayer.repository.CommentRepository;
import com.mediaplayer.service.CommentService;
import com.mediaplayer.service.CommentServiceImpl;


@ExtendWith(MockitoExtension.class)
@SpringBootTest
public class MediaPlayerApplicationTests {

    @Mock
    private CommentRepository commentRepository;

    @Mock
    private RestTemplate restTemplate;

    @InjectMocks
    private CommentServiceImpl commentService;

    @Test
    void testAddNewComment() throws InvalidCommentException {
    	// Arrange
        Comment comment = new Comment();
        comment.setMessage("This is a valid comment");
        int userId = 1;
        int videoId = 1;

        when(commentRepository.save(comment)).thenReturn(comment);

        // Act
        Comment result = commentService.addnewComment(comment, userId, videoId);

        // Assert
        Assertions.assertEquals(comment, result);
        Assertions.assertNotNull(comment.getDate());
        Assertions.assertNotNull(comment.getTime());
        Assertions.assertEquals(userId, comment.getUserId());
        Assertions.assertEquals(videoId, comment.getVideoId());

        verify(commentRepository, times(1)).save(comment);
    }
    
    @Test
    public void testAddNewCommentForException() {
        // Arrange
        Comment comment = new Comment();
        int userId = 1;
        int videoId = 1;

        // Act and Assert
        Assertions.assertThrows(InvalidCommentException.class, () -> {
            commentService.addnewComment(comment, userId, videoId);
        });

        verify(commentRepository, never()).save(comment);
    }

    @Test
    void testAllComments() throws InvalidCommentException {
        int videoId = 1;
        List<Comment> comments = new ArrayList<>();
        comments.add(new Comment());
        comments.add(new Comment());

        when(commentRepository.allComments(videoId)).thenReturn(comments);

        List<Comment> allComments = commentService.allComments(videoId);

        assertNotNull(allComments);
        assertEquals(comments.size(), allComments.size());

        verify(commentRepository, times(1)).allComments(videoId);
    }

    @Test
    void testDeleteComment() throws InvalidCommentException {
        int commentId = 1;

        when(commentRepository.deleteComment(commentId)).thenReturn(1);

        String result = commentService.deleteComment(commentId);

        assertEquals("deleted successfully", result);

        verify(commentRepository, times(1)).deleteComment(commentId);
    }
    @Test
    public void testGetByUserIdForUsers() {
        int userId = 1;

        Comment comment1 = new Comment();
        comment1.setUserId(userId);

        Comment comment2 = new Comment();
        comment2.setUserId(userId);

        Users user = new Users();
        user.setUserId(userId);

        List<Comment> comments = Arrays.asList(comment1, comment2);

        when(commentRepository.findByUserId(userId)).thenReturn(comments);
        when(restTemplate.getForObject(anyString(), eq(Users.class))).thenReturn(user);

        List<Comment> result = commentService.getByUserId(userId);

        assertEquals(comments.size(), result.size());
        for (Comment comment : result) {
            assertEquals(userId, comment.getUsers().getUserId());
        }
        verify(commentRepository, times(1)).findByUserId(userId);
        verify(restTemplate, times(comments.size())).getForObject(anyString(), eq(Users.class));
    }

    @Test
    public void testGetByUserIdForEmptyList() {
    	 // Arrange
        int userId = 1;
        List<Comment> comments = new ArrayList<>();

        when(commentRepository.findByUserId(userId)).thenReturn(comments);

        // Act
        List<Comment> result = commentService.getByUserId(userId);

        // Assert
        Assertions.assertTrue(result.isEmpty());

        verify(commentRepository, times(1)).findByUserId(userId);
        verify(restTemplate, never()).getForObject(anyString(), eq(Users.class));
    }
}