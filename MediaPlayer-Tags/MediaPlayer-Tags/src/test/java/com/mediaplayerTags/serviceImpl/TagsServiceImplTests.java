package com.mediaplayerTags.serviceImpl;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.mediaplayerTags.Entity.Tag;
import com.mediaplayerTags.repository.TagRepository;

class TagsServiceImplTest {

    @Mock
    private TagRepository tagRepository;

    @InjectMocks
    private TagsServiceImpl tagsService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testAddTag() {
        Tag tag = new Tag();
        when(tagRepository.save(tag)).thenReturn(tag);

        Tag savedTag = tagsService.addTag(tag);

        assertEquals(tag, savedTag);
        verify(tagRepository, times(1)).save(tag);
    }

    @Test
    void testGetTagById() {
        int desId = 1;
        List<Tag> expectedTags = new ArrayList<>();
        when(tagRepository.findByDesId(desId)).thenReturn(expectedTags);

        List<Tag> actualTags = tagsService.getTagById(desId);

        assertEquals(expectedTags, actualTags);
        verify(tagRepository, times(1)).findByDesId(desId);
    }

    @Test
    void testGetAllTags() {
        List<Tag> expectedTags = new ArrayList<>();
        when(tagRepository.findAll()).thenReturn(expectedTags);

        List<Tag> actualTags = tagsService.getAllTags();

        assertEquals(expectedTags, actualTags);
        verify(tagRepository, times(1)).findAll();
    }

    @Test
    void testDeleteTag() {
        int tagId = 1;

        tagsService.deleteTag(tagId);

        verify(tagRepository, times(1)).deleteById(tagId);
    }
}
