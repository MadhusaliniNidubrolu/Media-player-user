package com.cg.mediaplayeruser;


import com.cg.mediaplayeruser.controller.UserController;
import com.cg.mediaplayeruser.entites.Users;
import com.cg.mediaplayeruser.service.UserService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

public class UserControllerTests {

    @Mock
    private UserService userService;

    @InjectMocks
    private UserController userController;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testAddUser() {
        Users user = new Users();
        user.setUserId(1);
        user.setUserName("john.doe");
        user.setEmail("john@example.com");

        when(userService.addUser(any(Users.class))).thenReturn(user);

        Users result = userController.addUser(user);

        assertEquals(user.getUserId(), result.getUserId());
        assertEquals(user.getUserName(), result.getUserName());
        assertEquals(user.getEmail(), result.getEmail());

        verify(userService, times(1)).addUser(any(Users.class));
    }

    @Test
    public void testGetAllUsers() {
        List<Users> userList = new ArrayList<>();
        Users user1 = new Users();
        user1.setUserId(1);
        user1.setUserName("john.doe");
        user1.setEmail("john@example.com");
        Users user2 = new Users();
        user2.setUserId(2);
        user2.setUserName("jane.doe");
        user2.setEmail("jane@example.com");
        userList.add(user1);
        userList.add(user2);

        when(userService.getAllUsers()).thenReturn(userList);

        List<Users> result = userController.getAllUsers();

        assertEquals(userList.size(), result.size());
        assertEquals(userList.get(0).getUserId(), result.get(0).getUserId());
        assertEquals(userList.get(0).getUserName(), result.get(0).getUserName());
        assertEquals(userList.get(0).getEmail(), result.get(0).getEmail());
        assertEquals(userList.get(1).getUserId(), result.get(1).getUserId());
        assertEquals(userList.get(1).getUserName(), result.get(1).getUserName());
        assertEquals(userList.get(1).getEmail(), result.get(1).getEmail());

        verify(userService, times(1)).getAllUsers();
    }

    @Test
    public void testGetUserById() {
        int userId = 1;
        Users user = new Users();
        user.setUserId(userId);
        user.setUserName("john.doe");
        user.setEmail("john@example.com");

        when(userService.getUserById(userId)).thenReturn(user);

        Users result = userController.getUserById(userId);

        assertEquals(user.getUserId(), result.getUserId());
        assertEquals(user.getUserName(), result.getUserName());
        assertEquals(user.getEmail(), result.getEmail());

        verify(userService, times(1)).getUserById(userId);
    }

    @Test
    public void testDeleteByUserId() {
        int userId = 1;
        String expectedResponse = "User deleted successfully";

        when(userService.deleteByUserId(userId)).thenReturn(expectedResponse);

        String result = userController.deleteByUserId(userId);

        assertEquals(expectedResponse, result);

        verify(userService, times(1)).deleteByUserId(userId);
    }

    @Test
    public void testDeleteAll() {
        String expectedResponse = "All users deleted successfully";

        when(userService.deleteAllUsers()).thenReturn(expectedResponse);

        String result = userController.deleteAll();

        assertEquals(expectedResponse, result);

        verify(userService, times(1)).deleteAllUsers();
        
    }
}
   
