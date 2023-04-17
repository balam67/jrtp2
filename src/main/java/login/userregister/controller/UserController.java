package login.userregister.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import login.dto.UserRegistrationDto;
import login.entity.User;
import login.repository.UserRepository;

@Controller

public class UserController {

	
	@Autowired
    private UserRepository userRepository;
    
    // other methods
	
	 @GetMapping("/")
	    public String home(Model model) {
	       
	        
	        return "home";
	    }
    
    @GetMapping("/regester")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("userRegistrationDto", new UserRegistrationDto());
        
        return "registration";
    }

    @PostMapping("/process-registration")
    public String processRegistration(@ModelAttribute("user") User user, BindingResult bindingResult) {
        // validate user input
        // ...
        
         String password = user.getPassword();


         if(password == null) {
        	    throw new IllegalArgumentException("Password cannot be null");
         }

        // check if username already exists
        if (userRepository.findByUsername(user.getUsername()) != null) {
            bindingResult.rejectValue("username", "error.user", "Username is already taken");
            return "registration";
        }
        
       
        
        
        // encode password before saving to database
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        
      
        user.setPassword(encodedPassword);

        userRepository.save(user);

        return "redirect:/loginhomepage?registrationSuccess";
    }
}
