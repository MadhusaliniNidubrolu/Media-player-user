package com.cg.mediaplayeruser;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.client.RestTemplate;

import com.cg.mediaplayeruser.entites.Users;
import com.cg.mediaplayeruser.entites.Videos;
import com.cg.mediaplayeruser.repository.UserRepositroy;

import com.cg.mediaplayeruser.serviceimpl.UserServiceImpl;

@SpringBootTest
class MediaPlayerUserApplicationTests {

	@Mock
	private UserRepositroy userRepository;
	
	@Mock
	private RestTemplate restTemplate;

	@InjectMocks
	private UserServiceImpl userService;

	@Test
	public void testAddUser() {
		Users user = new Users();
		user.setUserId(1);
		user.setUserName("John Doe");

		when(userRepository.save(any(Users.class))).thenReturn(user);

		Users result = userService.addUser(user);

		verify(userRepository, times(1)).save(user);

		assertNotNull(result);
		assertEquals(user.getUserId(), result.getUserId());
		assertEquals(user.getUserName(), result.getUserName());

	}

	@Test
	   public void testGetAllUsers() {
	        
	        Users user1 = new Users();
	        user1.setUserId(1);
	        Users user2 = new Users();
	        user2.setUserId(2);
	        
	        List<Users> usersList = new ArrayList<>();
	        usersList.add(user1);
	        usersList.add(user2);
	        

	       
	        when(userRepository.findAll()).thenReturn(usersList);

	        
	        List<Videos> videosList = new ArrayList<>();
	        Videos video1 = new Videos();
	        video1.setVideoId(1);
	        Videos video2 = new Videos();
	        video2.setVideoId(2);
	        videosList.add(video1);
	        videosList.add(video2);
	        when(restTemplate.getForObject(Mockito.anyString(), Mockito.eq(List.class))).thenReturn(videosList);

	        // Invoke the method
	        List<Users> result = userService.getAllUsers();

	      
	        assertEquals(2, result.size());
	        Users resultUser1 = result.get(0);
	        assertEquals(user1.getUserId(), resultUser1.getUserId());
	        assertEquals(2, resultUser1.getVideos().size());
	        Users resultUser2 = result.get(1);
	        assertEquals(user2.getUserId(), resultUser2.getUserId());
	        assertEquals(2, resultUser2.getVideos().size());
	       
	        
	}
	    

	@Test
	public void testGetUserById() {

		int userId = 1;
		Users user = new Users();
		user.setUserId(userId);
		user.setUserName("John Doe");

		when(userRepository.findById(userId)).thenReturn(Optional.of(user));

		Users result = userService.getUserById(userId);

		verify(userRepository, times(1)).findById(userId);

		assertNotNull(result);
		assertEquals(userId, result.getUserId());
		assertEquals(user.getUserName(), result.getUserName());

	}

	@Test
	public void testDeleteAllUsers() {

		String result = userService.deleteAllUsers();

		verify(userRepository, times(1)).deleteAll();

		assertNotNull(result);
		assertEquals("all users are deleted", result);
	}

	@Test
	public void testDeleteByUserId() {

		int userId = 1;

		String result = userService.deleteByUserId(userId);

		verify(userRepository, times(1)).deleteById(userId);

		assertNotNull(result);
		//assertEquals("a user is deleted who's employee id is " + userId, result);
	}
}
