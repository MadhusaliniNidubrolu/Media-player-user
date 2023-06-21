package com.mediaplayerTags.serviceImpl;



import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.mediaplayerTags.Entity.Tag;
import com.mediaplayerTags.controller.TagController;
import com.mediaplayerTags.exceptions.DuplicateTagException;
import com.mediaplayerTags.exceptions.TagNotFoundException;
import com.mediaplayerTags.service.TagService;

public class TagControllerTest {

    @Mock
    private TagService tagService;

    @InjectMocks
    private TagController tagController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetAllTags() {
        List<Tag> expectedTags = new ArrayList<>();
        when(tagService.getAllTags()).thenReturn(expectedTags);

        ResponseEntity<List<Tag>> response = tagController.getAllTags();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedTags, response.getBody());
        verify(tagService, times(1)).getAllTags();
    }

    @Test
    void testGetTagById_WithExistingTag() {
        int tagId = 1;
        List<Tag> expectedTag = new ArrayList<>();
        when(tagService.getTagById(tagId)).thenReturn(expectedTag);

        ResponseEntity<List<Tag>> response = tagController.getTagById(tagId);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedTag, response.getBody());
        verify(tagService, times(1)).getTagById(tagId);
    }

    @Test
    void testGetTagById_WithNonExistingTag() {
        int tagId = 1;
        when(tagService.getTagById(tagId)).thenThrow(new TagNotFoundException("Tag not found"));

        ResponseEntity<List<Tag>> response = tagController.getTagById(tagId);

        assertEquals(HttpStatus.NOT_FOUND, response.getStatusCode());
        verify(tagService, times(1)).getTagById(tagId);
    }

    @Test
    void testCreateTag_WithValidTag() {
        Tag tag = new Tag();
        when(tagService.addTag(tag)).thenReturn(tag);

        ResponseEntity<Tag> response = tagController.createTag(tag);

        assertEquals(HttpStatus.CREATED, response.getStatusCode());
        assertEquals(tag, response.getBody());
        verify(tagService, times(1)).addTag(tag);
    }

    @Test
    void testCreateTag_WithDuplicateTag() {
        Tag tag = new Tag();
        when(tagService.addTag(tag)).thenThrow(new DuplicateTagException("Duplicate tag"));

        ResponseEntity<Tag> response = tagController.createTag(tag);

        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        verify(tagService, times(1)).addTag(tag);
    }

    @Test
    void testDeleteTag_WithExistingTag() {
        int tagId = 1;

        ResponseEntity<Void> response = tagController.deleteTag(tagId);

        assertEquals(HttpStatus.NO_CONTENT, response.getStatusCode());
        verify(tagService, times(1)).deleteTag(tagId);
    }

    @Test
    void testDeleteTag_WithNonExistingTag() {
        int tagId = 1;
       // when(tagService.deleteTag(tagId)).thenThrow(new TagNotFoundException("Tag not found"));
        doThrow(new TagNotFoundException("Tag not found")).when(tagService).deleteTag(tagId);
        ResponseEntity<Void> response = tagController.deleteTag(tagId);

        assertEquals(HttpStatus.NOT_FOUND, response.getStatusCode());
        verify(tagService, times(1)).deleteTag(tagId);
    }
}
