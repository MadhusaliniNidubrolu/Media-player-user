package com.cg.MediaPlayerApplication;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.web.client.RestTemplate;

import com.cg.MediaPlayerApplication.entity.Description;
import com.cg.MediaPlayerApplication.entity.Tag;
import com.cg.MediaPlayerApplication.exceptions.DescriptionNotFoundException;
import com.cg.MediaPlayerApplication.repository.DescriptionRepo;
import com.cg.MediaPlayerApplication.serviceimpl.DescriptionServiceImpl;

@ExtendWith(MockitoExtension.class)
public class MediaPlayerApplicationTests {
	
	@Mock
	private DescriptionRepo descriptionRepo;
	
	@Mock
	private RestTemplate restTemplate;
	
	@InjectMocks
	private DescriptionServiceImpl descriptionService;

	@Test
	void testGetlistAllDescriptionsService() {
		List<Description> descriptionsList = new ArrayList<>();
		Description description1 = new Description();
		description1.setDesId(1);
		description1.setTitle("Description 1");
		description1.setLanguage("English");
		description1.setDescription("This is description 1");
		descriptionsList.add(description1);
		
		Description description2 = new Description();
		description2.setDesId(2);
		description2.setTitle("Description 2");
		description2.setLanguage("French");
		description2.setDescription("This is description 2");
		descriptionsList.add(description2);
		
		when(descriptionRepo.findAll()).thenReturn(descriptionsList);
		
		List<Description> result = descriptionService.getlistAllDescriptionsService();
		
		assertNotNull(result);
		assertEquals(2, result.size());
		assertEquals(description1.getTitle(), result.get(0).getTitle());
		assertEquals(description1.getLanguage(), result.get(0).getLanguage());
		assertEquals(description1.getDescription(), result.get(0).getDescription());
		
		assertEquals(description2.getTitle(), result.get(1).getTitle());
		assertEquals(description2.getLanguage(), result.get(1).getLanguage());
		assertEquals(description2.getDescription(), result.get(1).getDescription());
		
		verify(descriptionRepo, times(1)).findAll();
	}

	@Test
	void testGetlistAllDescriptionsService_DescriptionNotFoundException() {
		when(descriptionRepo.findAll()).thenReturn(new ArrayList<>());
		
		assertThrows(DescriptionNotFoundException.class, () -> descriptionService.getlistAllDescriptionsService());
		
		verify(descriptionRepo, times(1)).findAll();
	}

	@Test
	void testSearchDescriptionBytitle() {
		String title = "Description 1";
		
		List<Description> descriptionsList = new ArrayList<>();
		Description description1 = new Description();
		description1.setDesId(1);
		description1.setTitle("Description 1");
		description1.setLanguage("English");
		description1.setDescription("This is description 1");
		descriptionsList.add(description1);
		
		when(descriptionRepo.findBytitle(title)).thenReturn(descriptionsList);
		
		List<Description> result = descriptionService.searchDescriptionBytitle(title);
		
		assertNotNull(result);
		assertEquals(1, result.size());
		assertEquals(description1.getTitle(), result.get(0).getTitle());
		assertEquals(description1.getLanguage(), result.get(0).getLanguage());
		assertEquals(description1.getDescription(), result.get(0).getDescription());
		
		verify(descriptionRepo, times(1)).findBytitle(title);
	}

	@Test
	void testSearchDescriptionBytitle_DescriptionNotFoundException() {
		String title = "Non-existent Title";
		
		when(descriptionRepo.findBytitle(title)).thenReturn(new ArrayList<>());
		
		assertThrows(DescriptionNotFoundException.class, () -> descriptionService.searchDescriptionBytitle(title));
		
		verify(descriptionRepo, times(1)).findBytitle(title);
	}

	@Test
	void testSearchDescriptionBylanguage() {
		String language = "English";
		
		List<Description> descriptionsList = new ArrayList<>();
		Description description1 = new Description();
		description1.setDesId(1);
		description1.setTitle("Description 1");
		description1.setLanguage("English");
		description1.setDescription("This is description 1");
		descriptionsList.add(description1);
		
		when(descriptionRepo.findBylanguage(language)).thenReturn(descriptionsList);
		
		List<Description> result = descriptionService.searchDescriptionBylanguage(language);
		
		assertNotNull(result);
		assertEquals(1, result.size());
		assertEquals(description1.getTitle(), result.get(0).getTitle());
		assertEquals(description1.getLanguage(), result.get(0).getLanguage());
		assertEquals(description1.getDescription(), result.get(0).getDescription());
		
		verify(descriptionRepo, times(1)).findBylanguage(language);
	}

	@Test
	void testSearchDescriptionBylanguage_DescriptionNotFoundException() {
		String language = "Non-existent Language";
		
		when(descriptionRepo.findBylanguage(language)).thenReturn(new ArrayList<>());
		
		assertThrows(DescriptionNotFoundException.class, () -> descriptionService.searchDescriptionBylanguage(language));
		
		verify(descriptionRepo, times(1)).findBylanguage(language);
	}

	@Test
	void testAddNewDescriptionService() {
		Description description = new Description();
		description.setTitle("New Description");
		description.setLanguage("English");
		description.setDescription("This is a new description");
		int videoId = 1;
		
		when(descriptionRepo.save(description)).thenReturn(description);
		
		String result = descriptionService.addNewDescriptionService(description, videoId);
		
		assertEquals("Description added successfully", result);
		assertEquals(videoId, description.getVideoId());
		
		verify(descriptionRepo, times(1)).save(description);
	}

//	@Test
//    public void testAddNewDescriptionService_DescriptionNotFoundException() {
//        // Arrange
//        Description description = new Description();
//        description.setDescription("");
//        int videoId = 1;
//
//        // Act and Assert
//        assertThrows(DescriptionNotFoundException.class, () -> {
//            descriptionService.addNewDescriptionService(description, videoId);
//        });
//    }

	@Test
	void testUpdateDescriptionService() {
		int desId = 1;
		
		Description existingDescription = new Description();
		existingDescription.setDesId(desId);
		existingDescription.setTitle("Description 1");
		existingDescription.setLanguage("English");
		existingDescription.setDescription("This is description 1");
		
		Description updatedDescription = new Description();
		updatedDescription.setTitle("Updated Description");
		updatedDescription.setLanguage("French");
		updatedDescription.setDescription("This is the updated description");
		
		Optional<Description> optionalDescription = Optional.of(existingDescription);
		when(descriptionRepo.findById(desId)).thenReturn(optionalDescription);
		when(descriptionRepo.save(existingDescription)).thenReturn(existingDescription);
		
		Description result = descriptionService.updateDescriptionService(updatedDescription, desId);
		
		assertNotNull(result);
		assertEquals(existingDescription.getDesId(), result.getDesId());
		assertEquals(updatedDescription.getTitle(), result.getTitle());
		assertEquals(updatedDescription.getLanguage(), result.getLanguage());
		assertEquals(updatedDescription.getDescription(), result.getDescription());
		
		verify(descriptionRepo, times(1)).findById(desId);
		verify(descriptionRepo, times(1)).save(existingDescription);
	}

	@Test
	void testUpdateDescriptionService_DescriptionNotFoundException() {
		int desId = 1;
		
		Description updatedDescription = new Description();
		updatedDescription.setTitle("Updated Description");
		updatedDescription.setLanguage("French");
		updatedDescription.setDescription("This is the updated description");
		
		Optional<Description> optionalDescription = Optional.empty();
		when(descriptionRepo.findById(desId)).thenReturn(optionalDescription);
		
		assertThrows(DescriptionNotFoundException.class, () -> descriptionService.updateDescriptionService(updatedDescription, desId));
		
		verify(descriptionRepo, times(1)).findById(desId);
		verify(descriptionRepo, never()).save(any(Description.class));
	}

	@Test
	void testGetByVideoId() {
	    int videoId = 1;

	    Description description = new Description();
	    description.setDesId(1);
	    description.setTitle("Description 1");
	    description.setLanguage("English");
	    description.setDescription("This is description 1");

	    List<Tag> tagsList = new ArrayList<>();
	    Tag tag1 = new Tag();
	    tag1.setTagId(1);
	    tag1.setName("Tag 1");
	    tagsList.add(tag1);

	    Tag tag2 = new Tag();
	    tag2.setTagId(2);
	    tag2.setName("Tag 2");
	    tagsList.add(tag2);

	    when(descriptionRepo.findByVideoId(videoId)).thenReturn(description);

	    Description result = descriptionService.getByVideoId(videoId);

	    result = descriptionService.getByVideoId(videoId);

	    assertNotNull(result);
	    assertEquals(description.getDesId(), result.getDesId());
	    assertEquals(description.getTitle(), result.getTitle());
	    assertEquals(description.getLanguage(), result.getLanguage());
	    assertEquals(description.getDescription(), result.getDescription());
	}

}
