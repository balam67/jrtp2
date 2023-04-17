package login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import login.dto.UserRegistrationDto;
import login.entity.User;
import login.pass.EncodingPassword;
import login.repository.UserRepository;
@Service
public class UserServiceImpl  implements UserService{


	@Autowired
	private EncodingPassword encodingPassword;
	  @Autowired
	  private UserRepository userRepository;
	  
	  @Autowired
	  private PasswordEncoder passwordEncoder;

	  public void createUser(String username, String password) {
	    String encodedPassword = passwordEncoder.encode(password);
	    User user = new User();
	    user.setUsername(username);
	    user.setPassword(encodedPassword);
	    userRepository.save(user);
	  }

	  public boolean authenticate(String username, String password) {
		  
		  
	    User user = userRepository.findByUsername(username);
	   
	    
	    if (user != null && passwordEncoder.matches(password, user.getPassword())) {
	    	 
	      return true;
	    } else {
	      return false;
	    }
	  }

	@Override
	public User registerNewUser(UserRegistrationDto userDto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	
	}
