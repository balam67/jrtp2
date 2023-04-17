package login.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import login.service.UserService;

@Controller
public class LoginController {
	  
	  @Autowired
	  private UserService userService;

	  @GetMapping("/loginhomepage")
	  public String login() {
	    return "login";
	  }
		
	 
		
		  @PostMapping("/logina") 
		  public String loginPost(Model model, @RequestParam("username") String username, @RequestParam("password")  String password) {
		  
		  
				
				  System.out.println("Input username  "+username+ "Input Password "+password );
				  
				  if (userService.authenticate(username, password)) {
				  
					  model.addAttribute("username", username);
				        return "logout"; 
				  
				  }else {
				  
				        model.addAttribute("error", "Invalid username or password");
				 
		  
		          return "login";
		        } 
		  
		  }
		 
			  
	
	  

	  @GetMapping("/dashboard")
	  public String dashboard() {
	    return "dashboard";
	  }
	}