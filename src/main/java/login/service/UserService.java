package login.service;

import login.dto.UserRegistrationDto;
import login.entity.User;

public interface UserService {

	
	 User registerNewUser(UserRegistrationDto userDto);
	 User findByUsername(String username);
	boolean authenticate(String username, String password);
	}
